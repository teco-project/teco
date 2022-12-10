//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Pts {
    /// 创建文件
    ///
    /// 创建文件
    @inlinable
    public func createFile(_ input: CreateFileRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateFileResponse > {
        self.client.execute(action: "CreateFile", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建文件
    ///
    /// 创建文件
    @inlinable
    public func createFile(_ input: CreateFileRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFileResponse {
        try await self.client.execute(action: "CreateFile", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateFile请求参数结构体
    public struct CreateFileRequest: TCRequestModel {
        /// 文件 ID
        public let fileId: String
        
        /// 项目 ID
        public let projectId: String
        
        /// 文件种类，参数文件-1，协议文件-2，请求文件-3
        public let kind: Int64
        
        /// 文件名
        public let name: String
        
        /// 文件大小
        public let size: Int64
        
        /// 文件类型，文件夹-folder
        public let type: String
        
        /// 行数
        public let lineCount: Int64?
        
        /// 前几行数据
        public let headLines: [String]?
        
        /// 后几行数据
        public let tailLines: [String]?
        
        /// 表头是否在文件内
        public let headerInFile: Bool?
        
        /// 表头
        public let headerColumns: [String]?
        
        /// 文件夹中的文件
        public let fileInfos: [FileInfo]?
        
        public init (fileId: String, projectId: String, kind: Int64, name: String, size: Int64, type: String, lineCount: Int64?, headLines: [String]?, tailLines: [String]?, headerInFile: Bool?, headerColumns: [String]?, fileInfos: [FileInfo]?) {
            self.fileId = fileId
            self.projectId = projectId
            self.kind = kind
            self.name = name
            self.size = size
            self.type = type
            self.lineCount = lineCount
            self.headLines = headLines
            self.tailLines = tailLines
            self.headerInFile = headerInFile
            self.headerColumns = headerColumns
            self.fileInfos = fileInfos
        }
        
        enum CodingKeys: String, CodingKey {
            case fileId = "FileId"
            case projectId = "ProjectId"
            case kind = "Kind"
            case name = "Name"
            case size = "Size"
            case type = "Type"
            case lineCount = "LineCount"
            case headLines = "HeadLines"
            case tailLines = "TailLines"
            case headerInFile = "HeaderInFile"
            case headerColumns = "HeaderColumns"
            case fileInfos = "FileInfos"
        }
    }
    
    /// CreateFile返回参数结构体
    public struct CreateFileResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}