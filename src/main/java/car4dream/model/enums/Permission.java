package car4dream.model.enums;

public enum Permission {
    USER_GUEST("users:see"),
    USER_READ("users:read"),
    USER_WRITE("users:write");


    private final String permission;

    Permission(String permission) {
        this.permission = permission;
    }

    public String getPermission() {
        return permission;
    }

}
