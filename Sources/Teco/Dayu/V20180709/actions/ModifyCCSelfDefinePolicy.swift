//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
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
    /// ModifyCCSelfDefinePolicy请求参数结构体
    public struct ModifyCCSelfDefinePolicyRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String

        /// 资源ID
        public let id: String

        /// 策略ID
        public let setId: String

        /// CC策略描述
        public let policy: CCPolicy

        public init(business: String, id: String, setId: String, policy: CCPolicy) {
            self.business = business
            self.id = id
            self.setId = setId
            self.policy = policy
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case setId = "SetId"
            case policy = "Policy"
        }
    }

    /// ModifyCCSelfDefinePolicy返回参数结构体
    public struct ModifyCCSelfDefinePolicyResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }

    /// 修改CC自定义策略
    @inlinable
    public func modifyCCSelfDefinePolicy(_ input: ModifyCCSelfDefinePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCCSelfDefinePolicyResponse> {
        self.client.execute(action: "ModifyCCSelfDefinePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改CC自定义策略
    @inlinable
    public func modifyCCSelfDefinePolicy(_ input: ModifyCCSelfDefinePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCCSelfDefinePolicyResponse {
        try await self.client.execute(action: "ModifyCCSelfDefinePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改CC自定义策略
    @inlinable
    public func modifyCCSelfDefinePolicy(business: String, id: String, setId: String, policy: CCPolicy, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCCSelfDefinePolicyResponse> {
        self.modifyCCSelfDefinePolicy(.init(business: business, id: id, setId: setId, policy: policy), region: region, logger: logger, on: eventLoop)
    }

    /// 修改CC自定义策略
    @inlinable
    public func modifyCCSelfDefinePolicy(business: String, id: String, setId: String, policy: CCPolicy, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCCSelfDefinePolicyResponse {
        try await self.modifyCCSelfDefinePolicy(.init(business: business, id: id, setId: setId, policy: policy), region: region, logger: logger, on: eventLoop)
    }
}
