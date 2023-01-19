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

extension Ccc {
    /// DisableCCCPhoneNumber请求参数结构体
    public struct DisableCCCPhoneNumberRequest: TCRequestModel {
        /// TCCC 实例应用 ID
        public let sdkAppId: UInt64

        /// 号码列表，0086开头
        public let phoneNumbers: [String]

        /// 停用开关，0启用 1停用
        public let disabled: Int64

        public init(sdkAppId: UInt64, phoneNumbers: [String], disabled: Int64) {
            self.sdkAppId = sdkAppId
            self.phoneNumbers = phoneNumbers
            self.disabled = disabled
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case phoneNumbers = "PhoneNumbers"
            case disabled = "Disabled"
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
    @inlinable
    public func disableCCCPhoneNumber(_ input: DisableCCCPhoneNumberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableCCCPhoneNumberResponse> {
        self.client.execute(action: "DisableCCCPhoneNumber", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停用号码
    @inlinable
    public func disableCCCPhoneNumber(_ input: DisableCCCPhoneNumberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableCCCPhoneNumberResponse {
        try await self.client.execute(action: "DisableCCCPhoneNumber", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停用号码
    @inlinable
    public func disableCCCPhoneNumber(sdkAppId: UInt64, phoneNumbers: [String], disabled: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableCCCPhoneNumberResponse> {
        self.disableCCCPhoneNumber(DisableCCCPhoneNumberRequest(sdkAppId: sdkAppId, phoneNumbers: phoneNumbers, disabled: disabled), region: region, logger: logger, on: eventLoop)
    }

    /// 停用号码
    @inlinable
    public func disableCCCPhoneNumber(sdkAppId: UInt64, phoneNumbers: [String], disabled: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableCCCPhoneNumberResponse {
        try await self.disableCCCPhoneNumber(DisableCCCPhoneNumberRequest(sdkAppId: sdkAppId, phoneNumbers: phoneNumbers, disabled: disabled), region: region, logger: logger, on: eventLoop)
    }
}
