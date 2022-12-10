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

extension Wedata {
    /// 资源管理创建文件路径
    ///
    /// 文件路径的根目录为 /datastudio/resource，如果要在根目录下创建 aaa 文件夹，FilePath的值应该为 /datastudio/resource，如果根目录下已经创建了 aaa 文件夹，要在 aaa 下创建  bbb 文件夹，FilePath的值应该为 /datastudio/resource/aaa
    @inlinable
    public func createResourcePath(_ input: CreateResourcePathRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateResourcePathResponse > {
        self.client.execute(action: "CreateResourcePath", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 资源管理创建文件路径
    ///
    /// 文件路径的根目录为 /datastudio/resource，如果要在根目录下创建 aaa 文件夹，FilePath的值应该为 /datastudio/resource，如果根目录下已经创建了 aaa 文件夹，要在 aaa 下创建  bbb 文件夹，FilePath的值应该为 /datastudio/resource/aaa
    @inlinable
    public func createResourcePath(_ input: CreateResourcePathRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateResourcePathResponse {
        try await self.client.execute(action: "CreateResourcePath", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateResourcePath请求参数结构体
    public struct CreateResourcePathRequest: TCRequestModel {
        /// 文件夹名称，如 aaa
        public let name: String
        
        /// 文件夹所属父目录，请注意，根目录为 /datastudio/resource
        public let filePath: String
        
        /// 项目ID
        public let projectId: String
        
        public init (name: String, filePath: String, projectId: String) {
            self.name = name
            self.filePath = filePath
            self.projectId = projectId
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case filePath = "FilePath"
            case projectId = "ProjectId"
        }
    }
    
    /// CreateResourcePath返回参数结构体
    public struct CreateResourcePathResponse: TCResponseModel {
        /// 新建成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: Bool?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}