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

extension Cam {
    /// ListPolicyVersions请求参数结构体
    public struct ListPolicyVersionsRequest: TCRequestModel {
        /// 策略ID
        public let policyId: UInt64

        public init(policyId: UInt64) {
            self.policyId = policyId
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
        }
    }

    /// ListPolicyVersions返回参数结构体
    public struct ListPolicyVersionsResponse: TCResponseModel {
        /// 策略版本列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versions: [PolicyVersionItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case versions = "Versions"
            case requestId = "RequestId"
        }
    }

    /// 获取策略版本列表
    ///
    /// 该接口（ListPolicyVersions）用于获取策略版本列表
    @inlinable
    public func listPolicyVersions(_ input: ListPolicyVersionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPolicyVersionsResponse> {
        self.client.execute(action: "ListPolicyVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取策略版本列表
    ///
    /// 该接口（ListPolicyVersions）用于获取策略版本列表
    @inlinable
    public func listPolicyVersions(_ input: ListPolicyVersionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPolicyVersionsResponse {
        try await self.client.execute(action: "ListPolicyVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取策略版本列表
    ///
    /// 该接口（ListPolicyVersions）用于获取策略版本列表
    @inlinable
    public func listPolicyVersions(policyId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPolicyVersionsResponse> {
        let input = ListPolicyVersionsRequest(policyId: policyId)
        return self.client.execute(action: "ListPolicyVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取策略版本列表
    ///
    /// 该接口（ListPolicyVersions）用于获取策略版本列表
    @inlinable
    public func listPolicyVersions(policyId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPolicyVersionsResponse {
        let input = ListPolicyVersionsRequest(policyId: policyId)
        return try await self.client.execute(action: "ListPolicyVersions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
