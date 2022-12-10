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

extension Cdb {
    /// 修改云数据库实例的所属项目
    ///
    /// 本接口(ModifyDBInstanceProject)用于修改云数据库实例的所属项目。
    @inlinable
    public func modifyDBInstanceProject(_ input: ModifyDBInstanceProjectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDBInstanceProjectResponse > {
        self.client.execute(action: "ModifyDBInstanceProject", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改云数据库实例的所属项目
    ///
    /// 本接口(ModifyDBInstanceProject)用于修改云数据库实例的所属项目。
    @inlinable
    public func modifyDBInstanceProject(_ input: ModifyDBInstanceProjectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceProjectResponse {
        try await self.client.execute(action: "ModifyDBInstanceProject", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyDBInstanceProject请求参数结构体
    public struct ModifyDBInstanceProjectRequest: TCRequestModel {
        /// 实例 ID 数组，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        public let instanceIds: [String]
        
        /// 项目的 ID。
        public let newProjectId: Int64?
        
        public init (instanceIds: [String], newProjectId: Int64?) {
            self.instanceIds = instanceIds
            self.newProjectId = newProjectId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case newProjectId = "NewProjectId"
        }
    }
    
    /// ModifyDBInstanceProject返回参数结构体
    public struct ModifyDBInstanceProjectResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
