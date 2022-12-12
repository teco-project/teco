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
    /// DeleteAcRule请求参数结构体
    public struct DeleteAcRuleRequest: TCRequestModel {
        /// 删除规则对应的id值, 对应获取规则列表接口的Id 值
        public let id: UInt64
        
        /// 方向，0：出站，1：入站
        public let direction: UInt64
        
        /// EdgeId值两个vpc间的边id
        public let edgeId: String?
        
        /// NAT地域， 如ap-shanghai/ap-guangzhou/ap-chongqing等
        public let area: String?
        
        public init (id: UInt64, direction: UInt64, edgeId: String? = nil, area: String? = nil) {
            self.id = id
            self.direction = direction
            self.edgeId = edgeId
            self.area = area
        }
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case direction = "Direction"
            case edgeId = "EdgeId"
            case area = "Area"
        }
    }
    
    /// DeleteAcRule返回参数结构体
    public struct DeleteAcRuleResponse: TCResponseModel {
        /// 状态值 0: 删除成功, !0: 删除失败
        public let status: Int64
        
        /// 返回多余的信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let info: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case info = "Info"
            case requestId = "RequestId"
        }
    }
    
    /// 删除规则
    @inlinable
    public func deleteAcRule(_ input: DeleteAcRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteAcRuleResponse > {
        self.client.execute(action: "DeleteAcRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除规则
    @inlinable
    public func deleteAcRule(_ input: DeleteAcRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAcRuleResponse {
        try await self.client.execute(action: "DeleteAcRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
