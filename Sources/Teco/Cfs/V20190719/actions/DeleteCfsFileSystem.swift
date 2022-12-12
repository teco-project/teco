//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cfs {
    /// DeleteCfsFileSystem请求参数结构体
    public struct DeleteCfsFileSystemRequest: TCRequestModel {
        /// 文件系统 ID。说明，进行删除文件系统操作前需要先调用 DeleteMountTarget 接口删除该文件系统的挂载点，否则会删除失败。
        public let fileSystemId: String
        
        public init (fileSystemId: String) {
            self.fileSystemId = fileSystemId
        }
        
        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
        }
    }
    
    /// DeleteCfsFileSystem返回参数结构体
    public struct DeleteCfsFileSystemResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除文件系统
    ///
    /// 用于删除文件系统
    @inlinable
    public func deleteCfsFileSystem(_ input: DeleteCfsFileSystemRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteCfsFileSystemResponse > {
        self.client.execute(action: "DeleteCfsFileSystem", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除文件系统
    ///
    /// 用于删除文件系统
    @inlinable
    public func deleteCfsFileSystem(_ input: DeleteCfsFileSystemRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCfsFileSystemResponse {
        try await self.client.execute(action: "DeleteCfsFileSystem", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
