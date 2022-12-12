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

extension Dayu {
    /// ModifyDDoSThreshold请求参数结构体
    public struct ModifyDDoSThresholdRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String
        
        /// 资源ID
        public let id: String
        
        /// DDoS清洗阈值，取值[0, 60, 80, 100, 150, 200, 250, 300, 400, 500, 700, 1000];
        /// 当设置值为0时，表示采用默认值；
        public let threshold: UInt64
        
        public init (business: String, id: String, threshold: UInt64) {
            self.business = business
            self.id = id
            self.threshold = threshold
        }
        
        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case threshold = "Threshold"
        }
    }
    
    /// ModifyDDoSThreshold返回参数结构体
    public struct ModifyDDoSThresholdResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }
    
    /// 修改DDoS清洗阈值
    @inlinable
    public func modifyDDoSThreshold(_ input: ModifyDDoSThresholdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDDoSThresholdResponse > {
        self.client.execute(action: "ModifyDDoSThreshold", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改DDoS清洗阈值
    @inlinable
    public func modifyDDoSThreshold(_ input: ModifyDDoSThresholdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDDoSThresholdResponse {
        try await self.client.execute(action: "ModifyDDoSThreshold", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
