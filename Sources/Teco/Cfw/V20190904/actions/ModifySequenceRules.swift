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

extension Cfw {
    /// 修改规则执行顺序
    ///
    /// 修改规则执行顺序
    @inlinable
    public func modifySequenceRules(_ input: ModifySequenceRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifySequenceRulesResponse > {
        self.client.execute(action: "ModifySequenceRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改规则执行顺序
    ///
    /// 修改规则执行顺序
    @inlinable
    public func modifySequenceRules(_ input: ModifySequenceRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySequenceRulesResponse {
        try await self.client.execute(action: "ModifySequenceRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifySequenceRules请求参数结构体
    public struct ModifySequenceRulesRequest: TCRequestModel {
        /// 边Id值
        public let edgeId: String?
        
        /// 修改数据
        public let data: [SequenceData]?
        
        /// NAT地域
        public let area: String?
        
        /// 方向，0：出向，1：入向
        public let direction: UInt64?
        
        public init (edgeId: String?, data: [SequenceData]?, area: String?, direction: UInt64?) {
            self.edgeId = edgeId
            self.data = data
            self.area = area
            self.direction = direction
        }
        
        enum CodingKeys: String, CodingKey {
            case edgeId = "EdgeId"
            case data = "Data"
            case area = "Area"
            case direction = "Direction"
        }
    }
    
    /// ModifySequenceRules返回参数结构体
    public struct ModifySequenceRulesResponse: TCResponseModel {
        /// 0: 修改成功, 非0: 修改失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }
}