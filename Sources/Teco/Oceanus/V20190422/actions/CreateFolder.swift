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

extension Oceanus {
    /// 创建文件夹
    ///
    /// 作业列表页面新建文件夹请求
    @inlinable
    public func createFolder(_ input: CreateFolderRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateFolderResponse > {
        self.client.execute(action: "CreateFolder", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建文件夹
    ///
    /// 作业列表页面新建文件夹请求
    @inlinable
    public func createFolder(_ input: CreateFolderRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFolderResponse {
        try await self.client.execute(action: "CreateFolder", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateFolder请求参数结构体
    public struct CreateFolderRequest: TCRequestModel {
        /// 新建文件夹名
        public let folderName: String
        
        /// 新建文件夹的父目录ID
        public let parentId: String
        
        /// 文件夹类型，0是任务文件夹，1是依赖文件夹
        public let folderType: Int64?
        
        /// 工作空间 SerialId
        public let workSpaceId: String?
        
        public init (folderName: String, parentId: String, folderType: Int64?, workSpaceId: String?) {
            self.folderName = folderName
            self.parentId = parentId
            self.folderType = folderType
            self.workSpaceId = workSpaceId
        }
        
        enum CodingKeys: String, CodingKey {
            case folderName = "FolderName"
            case parentId = "ParentId"
            case folderType = "FolderType"
            case workSpaceId = "WorkSpaceId"
        }
    }
    
    /// CreateFolder返回参数结构体
    public struct CreateFolderResponse: TCResponseModel {
        /// 新建文件夹的唯一ID
        public let folderId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case folderId = "FolderId"
            case requestId = "RequestId"
        }
    }
}
