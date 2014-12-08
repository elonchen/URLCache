URLCache
========

A very basic URL&lt;->Data in memory Cache for iOS that can be used for something as simple as caching image loading in tables.
```
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"CellIdent";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];

    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MyIdentifier];
    }

    NSString *tmp=self.items[(NSUInteger) indexPath.row];

    [cell.imageView setupWithURL:[NSURL URLWithString:tmp] completed:^(NSError *error) {
        // access using tableview's methods instead of directly
        [[tableView cellForRowAtIndexPath:indexPath] setNeedsLayout];
    }];


    cell.textLabel.text = [tmp stringByReplacingOccurrencesOfString:@"http://placehold.it/" withString:@""];;
    return cell;
}
```
