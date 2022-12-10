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

extension Dayu {
    /// 获取DDoS高级策略
    ///
    /// 获取DDoS高级策略
    @inlinable
    public func describeDDoSPolicy(_ input: DescribeDDoSPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDDoSPolicyResponse > {
        self.client.execute(action: "DescribeDDoSPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取DDoS高级策略
    ///
    /// 获取DDoS高级策略
    @inlinable
    public func describeDDoSPolicy(_ input: DescribeDDoSPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSPolicyResponse {
        try await self.client.execute(action: "DescribeDDoSPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDDoSPolicy请求参数结构体
    public struct DescribeDDoSPolicyRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String
        
        /// 可选字段，资源ID，如果填写则表示该资源绑定的DDoS高级策略
        public let id: String?
        
        public init (business: String, id: String?) {
            self.business = business
            self.id = id
        }
        
        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
        }
    }
    
    /// DescribeDDoSPolicy返回参数结构体
    public struct DescribeDDoSPolicyResponse: TCResponseModel {
        /// DDoS高级策略列表
        public let dDosPolicyList: [DDosPolicy]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dDosPolicyList = "DDosPolicyList"
            case requestId = "RequestId"
        }
    }
}