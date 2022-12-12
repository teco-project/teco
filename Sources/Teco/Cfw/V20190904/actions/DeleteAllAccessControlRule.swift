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

extension Cfw {
    /// DeleteAllAccessControlRule请求参数结构体
    public struct DeleteAllAccessControlRuleRequest: TCRequestModel {
        /// 方向，0：出站，1：入站  默认值是 0
        public let direction: UInt64?
        
        /// VPC间防火墙开关ID  全部删除 EdgeId和Area只填写一个，不填写则不删除vpc间防火墙开关 ，默认值为‘’
        public let edgeId: String?
        
        /// nat地域 全部删除 EdgeId和Area只填写一个，不填写则不删除nat防火墙开关 默认值为‘’
        public let area: String?
        
        public init (direction: UInt64? = nil, edgeId: String? = nil, area: String? = nil) {
            self.direction = direction
            self.edgeId = edgeId
            self.area = area
        }
        
        enum CodingKeys: String, CodingKey {
            case direction = "Direction"
            case edgeId = "EdgeId"
            case area = "Area"
        }
    }
    
    /// DeleteAllAccessControlRule返回参数结构体
    public struct DeleteAllAccessControlRuleResponse: TCResponseModel {
        /// 状态值 0: 修改成功, !0: 修改失败
        public let status: Int64
        
        /// 删除了几条访问控制规则
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let info: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case info = "Info"
            case requestId = "RequestId"
        }
    }
    
    /// 全部删除规则
    @inlinable
    public func deleteAllAccessControlRule(_ input: DeleteAllAccessControlRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteAllAccessControlRuleResponse > {
        self.client.execute(action: "DeleteAllAccessControlRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 全部删除规则
    @inlinable
    public func deleteAllAccessControlRule(_ input: DeleteAllAccessControlRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAllAccessControlRuleResponse {
        try await self.client.execute(action: "DeleteAllAccessControlRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
