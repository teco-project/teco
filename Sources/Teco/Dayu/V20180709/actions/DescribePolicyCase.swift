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
    /// DescribePolicyCase请求参数结构体
    public struct DescribePolicyCaseRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String

        /// 策略场景ID
        public let sceneId: String?

        public init(business: String, sceneId: String? = nil) {
            self.business = business
            self.sceneId = sceneId
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case sceneId = "SceneId"
        }
    }

    /// DescribePolicyCase返回参数结构体
    public struct DescribePolicyCaseResponse: TCResponseModel {
        /// 策略场景列表
        public let caseList: [KeyValueRecord]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case caseList = "CaseList"
            case requestId = "RequestId"
        }
    }

    /// 获取策略场景
    @inlinable
    public func describePolicyCase(_ input: DescribePolicyCaseRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePolicyCaseResponse> {
        self.client.execute(action: "DescribePolicyCase", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取策略场景
    @inlinable
    public func describePolicyCase(_ input: DescribePolicyCaseRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePolicyCaseResponse {
        try await self.client.execute(action: "DescribePolicyCase", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取策略场景
    @inlinable
    public func describePolicyCase(business: String, sceneId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePolicyCaseResponse> {
        self.describePolicyCase(DescribePolicyCaseRequest(business: business, sceneId: sceneId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取策略场景
    @inlinable
    public func describePolicyCase(business: String, sceneId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePolicyCaseResponse {
        try await self.describePolicyCase(DescribePolicyCaseRequest(business: business, sceneId: sceneId), region: region, logger: logger, on: eventLoop)
    }
}
