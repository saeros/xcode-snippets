// UITableView delegate
// Placeholders for required UITableViewDelegate protocol methods
// 
// Platform: iOS
// Language: Objective-C
// Completion Scope: Class Implementation

#pragma mark - UITableView delegate
////////////////////////////////////////////////////////////////////////////////

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath 
{
	return <#height#>;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath 
{
	<#statements#>

	[tableView deselectRowAtIndexPath:indexPath animated:NO];
}
