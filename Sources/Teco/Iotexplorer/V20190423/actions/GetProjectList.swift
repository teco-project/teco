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

extension Iotexplorer {
    /// 获取项目列表
    ///
    /// 提供查询用户所创建的项目列表查询功能。
    @inlinable
    public func getProjectList(_ input: GetProjectListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetProjectListResponse > {
        self.client.execute(action: "GetProjectList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取项目列表
    ///
    /// 提供查询用户所创建的项目列表查询功能。
    @inlinable
    public func getProjectList(_ input: GetProjectListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetProjectListResponse {
        try await self.client.execute(action: "GetProjectList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GetProjectList请求参数结构体
    public struct GetProjectListRequest: TCRequestModel {
        /// 偏移量
        public let offset: Int64?
        
        /// 个数限制
        public let limit: Int64?
        
        /// 实例ID
        public let instanceId: String?
        
        /// 按项目ID搜索
        public let projectId: String?
        
        /// 按产品ID搜索
        public let productId: String?
        
        /// 加载 ProductCount、DeviceCount、ApplicationCount，可选值：ProductCount、DeviceCount、ApplicationCount，可多选
        public let includes: [String]?
        
        /// 按项目名称搜索
        public let projectName: String?
        
        public init (offset: Int64?, limit: Int64?, instanceId: String?, projectId: String?, productId: String?, includes: [String]?, projectName: String?) {
            self.offset = offset
            self.limit = limit
            self.instanceId = instanceId
            self.projectId = projectId
            self.productId = productId
            self.includes = includes
            self.projectName = projectName
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case instanceId = "InstanceId"
            case projectId = "ProjectId"
            case productId = "ProductId"
            case includes = "Includes"
            case projectName = "ProjectName"
        }
    }
    
    /// GetProjectList返回参数结构体
    public struct GetProjectListResponse: TCResponseModel {
        /// 项目列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projects: [ProjectEntryEx]?
        
        /// 列表项个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case projects = "Projects"
            case total = "Total"
            case requestId = "RequestId"
        }
    }
}