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

import Logging
import NIOCore
import TecoCore

extension Sms {
    /// DescribePhoneNumberInfo请求参数结构体
    public struct DescribePhoneNumberInfoRequest: TCRequestModel {
        /// 查询手机号码，采用 E.164 标准，格式为+[国家或地区码][手机号]，单次请求最多支持200个手机号。
        /// 例如：+8613711112222， 其中前面有一个+号 ，86为国家码，13711112222为手机号。
        public let phoneNumberSet: [String]

        public init(phoneNumberSet: [String]) {
            self.phoneNumberSet = phoneNumberSet
        }

        enum CodingKeys: String, CodingKey {
            case phoneNumberSet = "PhoneNumberSet"
        }
    }

    /// DescribePhoneNumberInfo返回参数结构体
    public struct DescribePhoneNumberInfoResponse: TCResponseModel {
        /// 获取号码信息。
        public let phoneNumberInfoSet: [PhoneNumberInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case phoneNumberInfoSet = "PhoneNumberInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 号码信息查询
    ///
    /// 提供电话号码的信息查询，包括国家（或地区）码、规范的 E.164 格式号码等。
    /// >- 例如：查询号码 +86018845720123，可以得到国家码 86、规范的 E.164 号码 +8618845720123 等信息。
    @inlinable
    public func describePhoneNumberInfo(_ input: DescribePhoneNumberInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePhoneNumberInfoResponse> {
        self.client.execute(action: "DescribePhoneNumberInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 号码信息查询
    ///
    /// 提供电话号码的信息查询，包括国家（或地区）码、规范的 E.164 格式号码等。
    /// >- 例如：查询号码 +86018845720123，可以得到国家码 86、规范的 E.164 号码 +8618845720123 等信息。
    @inlinable
    public func describePhoneNumberInfo(_ input: DescribePhoneNumberInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePhoneNumberInfoResponse {
        try await self.client.execute(action: "DescribePhoneNumberInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 号码信息查询
    ///
    /// 提供电话号码的信息查询，包括国家（或地区）码、规范的 E.164 格式号码等。
    /// >- 例如：查询号码 +86018845720123，可以得到国家码 86、规范的 E.164 号码 +8618845720123 等信息。
    @inlinable
    public func describePhoneNumberInfo(phoneNumberSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePhoneNumberInfoResponse> {
        self.describePhoneNumberInfo(.init(phoneNumberSet: phoneNumberSet), region: region, logger: logger, on: eventLoop)
    }

    /// 号码信息查询
    ///
    /// 提供电话号码的信息查询，包括国家（或地区）码、规范的 E.164 格式号码等。
    /// >- 例如：查询号码 +86018845720123，可以得到国家码 86、规范的 E.164 号码 +8618845720123 等信息。
    @inlinable
    public func describePhoneNumberInfo(phoneNumberSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePhoneNumberInfoResponse {
        try await self.describePhoneNumberInfo(.init(phoneNumberSet: phoneNumberSet), region: region, logger: logger, on: eventLoop)
    }
}
