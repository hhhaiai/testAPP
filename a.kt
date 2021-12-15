 /**
   * 获取文件系统ID
   */
  fun getFileSystemId(path : String = "/"): Long{
      return try{
          val structStatVfs = android.system.Os.statvfs(path)
          structStatVfs.f_fsid
      }catch (e : Throwable){
          0L
      }
  }
