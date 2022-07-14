delete [SELECT Id FROM PermissionSetAssignment WHERE PermissionSet.Name IN ('log_Logging', 'log_Logging_Admin')];
Id loggingPermissionSetId = [SELECT Id FROM PermissionSet WHERE Name = 'log_Logging' LIMIT 1].Id;
Id loggingAdminPermissionSetId = [SELECT Id FROM PermissionSet WHERE Name = 'log_Logging_Admin' LIMIT 1].Id;

List<PermissionSetAssignment> permissionSetAssignments = new List<PermissionSetAssignment>();
List<User> adminUsers = [SELECT Id, Name FROM User WHERE Profile.Name = 'System Administrator' AND IsActive = TRUE];
for (User adminUser : adminUsers) {
    permissionSetAssignments.add(new PermissionSetAssignment(PermissionSetId = loggingPermissionSetId, AssigneeId = adminUser.Id));
    permissionSetAssignments.add(new PermissionSetAssignment(PermissionSetId = loggingAdminPermissionSetId, AssigneeId = adminUser.Id));
}
insert permissionSetAssignments;
