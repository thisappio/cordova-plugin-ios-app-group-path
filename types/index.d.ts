export interface AppGroupPath {
    getPath(appGroup: string, success: (path: string) => any, error: (e: any) => any);
}

declare var AppGroupPath: AppGroupPath;