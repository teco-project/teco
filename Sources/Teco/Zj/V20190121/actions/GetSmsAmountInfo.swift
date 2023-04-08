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

extension Zj {
    /// GetSmsAmountInfo请求参数结构体
    public struct GetSmsAmountInfoRequest: TCRequestModel {
        /// 商户证书
        public let license: String

        public init(license: String) {
            self.license = license
        }

        enum CodingKeys: String, CodingKey {
            case license = "License"
        }
    }

    /// GetSmsAmountInfo返回参数结构体
    public struct GetSmsAmountInfoResponse: TCResponseModel {
        /// 短信账号额度接口
        public let data: SmsAmountDataStruct

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取账号短信额度配置信息
    @inlinable
    public func getSmsAmountInfo(_ input: GetSmsAmountInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSmsAmountInfoResponse> {
        self.client.execute(action: "GetSmsAmountInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取账号短信额度配置信息
    @inlinable
    public func getSmsAmountInfo(_ input: GetSmsAmountInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSmsAmountInfoResponse {
        try await self.client.execute(action: "GetSmsAmountInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取账号短信额度配置信息
    @inlinable
    public func getSmsAmountInfo(license: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSmsAmountInfoResponse> {
        self.getSmsAmountInfo(.init(license: license), region: region, logger: logger, on: eventLoop)
    }

    /// 获取账号短信额度配置信息
    @inlinable
    public func getSmsAmountInfo(license: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSmsAmountInfoResponse {
        try await self.getSmsAmountInfo(.init(license: license), region: region, logger: logger, on: eventLoop)
    }
}
