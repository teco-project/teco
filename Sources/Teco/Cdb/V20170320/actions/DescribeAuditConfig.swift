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

extension Cdb {
    /// 查询审计服务配置
    ///
    /// 本接口(DescribeAuditConfig)用于查询云数据库审计策略的服务配置，包括审计日志保存时长等。
    @inlinable
    public func describeAuditConfig(_ input: DescribeAuditConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAuditConfigResponse > {
        self.client.execute(action: "DescribeAuditConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询审计服务配置
    ///
    /// 本接口(DescribeAuditConfig)用于查询云数据库审计策略的服务配置，包括审计日志保存时长等。
    @inlinable
    public func describeAuditConfig(_ input: DescribeAuditConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditConfigResponse {
        try await self.client.execute(action: "DescribeAuditConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAuditConfig请求参数结构体
    public struct DescribeAuditConfigRequest: TCRequestModel {
        /// 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String
        
        public init (instanceId: String) {
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }
    
    /// DescribeAuditConfig返回参数结构体
    public struct DescribeAuditConfigResponse: TCResponseModel {
        /// 审计日志保存时长。目前支持的值包括：[0，7，30，180，365，1095，1825]。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let logExpireDay: Int64?
        
        /// 审计日志存储类型。目前支持的值包括："storage" - 存储型。
        public let logType: String
        
        /// 是否正在关闭审计。目前支持的值包括："false"-否，"true"-是
        public let isClosing: String
        
        /// 审计服务开通时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case logExpireDay = "LogExpireDay"
            case logType = "LogType"
            case isClosing = "IsClosing"
            case createTime = "CreateTime"
            case requestId = "RequestId"
        }
    }
}