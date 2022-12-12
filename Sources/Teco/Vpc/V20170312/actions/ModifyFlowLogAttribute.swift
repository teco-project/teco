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

extension Vpc {
    /// ModifyFlowLogAttribute请求参数结构体
    public struct ModifyFlowLogAttributeRequest: TCRequestModel {
        /// 流日志唯一ID
        public let flowLogId: String
        
        /// 私用网络ID或者统一ID，建议使用统一ID，修改云联网流日志属性时可不填，其他流日志类型必填。
        public let vpcId: String?
        
        /// 流日志实例名字
        public let flowLogName: String?
        
        /// 流日志实例描述
        public let flowLogDescription: String?
        
        public init (flowLogId: String, vpcId: String? = nil, flowLogName: String? = nil, flowLogDescription: String? = nil) {
            self.flowLogId = flowLogId
            self.vpcId = vpcId
            self.flowLogName = flowLogName
            self.flowLogDescription = flowLogDescription
        }
        
        enum CodingKeys: String, CodingKey {
            case flowLogId = "FlowLogId"
            case vpcId = "VpcId"
            case flowLogName = "FlowLogName"
            case flowLogDescription = "FlowLogDescription"
        }
    }
    
    /// ModifyFlowLogAttribute返回参数结构体
    public struct ModifyFlowLogAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改流日志属性
    ///
    /// 本接口（ModifyFlowLogAttribute）用于修改流日志属性
    @inlinable
    public func modifyFlowLogAttribute(_ input: ModifyFlowLogAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyFlowLogAttributeResponse > {
        self.client.execute(action: "ModifyFlowLogAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改流日志属性
    ///
    /// 本接口（ModifyFlowLogAttribute）用于修改流日志属性
    @inlinable
    public func modifyFlowLogAttribute(_ input: ModifyFlowLogAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyFlowLogAttributeResponse {
        try await self.client.execute(action: "ModifyFlowLogAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
