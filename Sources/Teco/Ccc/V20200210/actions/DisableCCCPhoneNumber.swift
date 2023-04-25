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

extension Ccc {
    /// DisableCCCPhoneNumber请求参数结构体
    public struct DisableCCCPhoneNumberRequest: TCRequestModel {
        /// 号码列表，0086开头
        public let phoneNumbers: [String]

        /// 停用开关，0启用 1停用
        public let disabled: Int64

        /// TCCC 实例应用 ID
        public let sdkAppId: UInt64?

        public init(phoneNumbers: [String], disabled: Int64, sdkAppId: UInt64? = nil) {
            self.phoneNumbers = phoneNumbers
            self.disabled = disabled
            self.sdkAppId = sdkAppId
        }

        enum CodingKeys: String, CodingKey {
            case phoneNumbers = "PhoneNumbers"
            case disabled = "Disabled"
            case sdkAppId = "SdkAppId"
        }
    }

    /// DisableCCCPhoneNumber返回参数结构体
    public struct DisableCCCPhoneNumberResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 停用号码
    @inlinable @discardableResult
    public func disableCCCPhoneNumber(_ input: DisableCCCPhoneNumberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableCCCPhoneNumberResponse> {
        self.client.execute(action: "DisableCCCPhoneNumber", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停用号码
    @inlinable @discardableResult
    public func disableCCCPhoneNumber(_ input: DisableCCCPhoneNumberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableCCCPhoneNumberResponse {
        try await self.client.execute(action: "DisableCCCPhoneNumber", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停用号码
    @inlinable @discardableResult
    public func disableCCCPhoneNumber(phoneNumbers: [String], disabled: Int64, sdkAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableCCCPhoneNumberResponse> {
        self.disableCCCPhoneNumber(.init(phoneNumbers: phoneNumbers, disabled: disabled, sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 停用号码
    @inlinable @discardableResult
    public func disableCCCPhoneNumber(phoneNumbers: [String], disabled: Int64, sdkAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableCCCPhoneNumberResponse {
        try await self.disableCCCPhoneNumber(.init(phoneNumbers: phoneNumbers, disabled: disabled, sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }
}
