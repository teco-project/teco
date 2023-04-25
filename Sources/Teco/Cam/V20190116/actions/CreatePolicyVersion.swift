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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cam {
    /// CreatePolicyVersion请求参数结构体
    public struct CreatePolicyVersionRequest: TCRequestModel {
        /// 策略ID
        public let policyId: UInt64

        /// 策略文本信息
        public let policyDocument: String

        /// 是否设置为当前策略的版本
        public let setAsDefault: Bool

        public init(policyId: UInt64, policyDocument: String, setAsDefault: Bool) {
            self.policyId = policyId
            self.policyDocument = policyDocument
            self.setAsDefault = setAsDefault
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case policyDocument = "PolicyDocument"
            case setAsDefault = "SetAsDefault"
        }
    }

    /// CreatePolicyVersion返回参数结构体
    public struct CreatePolicyVersionResponse: TCResponseModel {
        /// 策略版本号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionId: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case versionId = "VersionId"
            case requestId = "RequestId"
        }
    }

    /// 新增策略版本接口
    ///
    /// 该接口（CreatePolicyVersion）用于新增策略版本，用户创建了一个策略版本之后可以方便的通过变更策略版本的方式来变更策略。
    @inlinable
    public func createPolicyVersion(_ input: CreatePolicyVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePolicyVersionResponse> {
        self.client.execute(action: "CreatePolicyVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增策略版本接口
    ///
    /// 该接口（CreatePolicyVersion）用于新增策略版本，用户创建了一个策略版本之后可以方便的通过变更策略版本的方式来变更策略。
    @inlinable
    public func createPolicyVersion(_ input: CreatePolicyVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePolicyVersionResponse {
        try await self.client.execute(action: "CreatePolicyVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增策略版本接口
    ///
    /// 该接口（CreatePolicyVersion）用于新增策略版本，用户创建了一个策略版本之后可以方便的通过变更策略版本的方式来变更策略。
    @inlinable
    public func createPolicyVersion(policyId: UInt64, policyDocument: String, setAsDefault: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePolicyVersionResponse> {
        self.createPolicyVersion(.init(policyId: policyId, policyDocument: policyDocument, setAsDefault: setAsDefault), region: region, logger: logger, on: eventLoop)
    }

    /// 新增策略版本接口
    ///
    /// 该接口（CreatePolicyVersion）用于新增策略版本，用户创建了一个策略版本之后可以方便的通过变更策略版本的方式来变更策略。
    @inlinable
    public func createPolicyVersion(policyId: UInt64, policyDocument: String, setAsDefault: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePolicyVersionResponse {
        try await self.createPolicyVersion(.init(policyId: policyId, policyDocument: policyDocument, setAsDefault: setAsDefault), region: region, logger: logger, on: eventLoop)
    }
}
