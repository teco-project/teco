//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// SetDefaultPolicyVersion请求参数结构体
    public struct SetDefaultPolicyVersionRequest: TCRequestModel {
        /// 策略ID
        public let policyId: UInt64

        /// 策略版本号，可由ListPolicyVersions获取
        public let versionId: UInt64

        public init(policyId: UInt64, versionId: UInt64) {
            self.policyId = policyId
            self.versionId = versionId
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case versionId = "VersionId"
        }
    }

    /// SetDefaultPolicyVersion返回参数结构体
    public struct SetDefaultPolicyVersionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置生效的策略版本
    ///
    /// 本接口（SetDefaultPolicyVersion）可用于设置生效的策略版本。
    @inlinable @discardableResult
    public func setDefaultPolicyVersion(_ input: SetDefaultPolicyVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetDefaultPolicyVersionResponse> {
        self.client.execute(action: "SetDefaultPolicyVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置生效的策略版本
    ///
    /// 本接口（SetDefaultPolicyVersion）可用于设置生效的策略版本。
    @inlinable @discardableResult
    public func setDefaultPolicyVersion(_ input: SetDefaultPolicyVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetDefaultPolicyVersionResponse {
        try await self.client.execute(action: "SetDefaultPolicyVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置生效的策略版本
    ///
    /// 本接口（SetDefaultPolicyVersion）可用于设置生效的策略版本。
    @inlinable @discardableResult
    public func setDefaultPolicyVersion(policyId: UInt64, versionId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetDefaultPolicyVersionResponse> {
        self.setDefaultPolicyVersion(SetDefaultPolicyVersionRequest(policyId: policyId, versionId: versionId), region: region, logger: logger, on: eventLoop)
    }

    /// 设置生效的策略版本
    ///
    /// 本接口（SetDefaultPolicyVersion）可用于设置生效的策略版本。
    @inlinable @discardableResult
    public func setDefaultPolicyVersion(policyId: UInt64, versionId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetDefaultPolicyVersionResponse {
        try await self.setDefaultPolicyVersion(SetDefaultPolicyVersionRequest(policyId: policyId, versionId: versionId), region: region, logger: logger, on: eventLoop)
    }
}
