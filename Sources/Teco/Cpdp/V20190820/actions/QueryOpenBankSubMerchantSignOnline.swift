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

extension Cpdp {
    /// QueryOpenBankSubMerchantSignOnline请求参数结构体
    public struct QueryOpenBankSubMerchantSignOnlineRequest: TCRequest {
        /// 渠道商户号。外部平台接入云企付平台下发。必填。
        public let channelMerchantId: String

        /// 渠道名称。详见附录-枚举类型-ChannelName。
        public let channelName: String

        /// 外部子商户ID。
        public let outSubMerchantId: String?

        /// 渠道子商户ID。
        public let channelSubMerchantId: String?

        public init(channelMerchantId: String, channelName: String, outSubMerchantId: String? = nil, channelSubMerchantId: String? = nil) {
            self.channelMerchantId = channelMerchantId
            self.channelName = channelName
            self.outSubMerchantId = outSubMerchantId
            self.channelSubMerchantId = channelSubMerchantId
        }

        enum CodingKeys: String, CodingKey {
            case channelMerchantId = "ChannelMerchantId"
            case channelName = "ChannelName"
            case outSubMerchantId = "OutSubMerchantId"
            case channelSubMerchantId = "ChannelSubMerchantId"
        }
    }

    /// QueryOpenBankSubMerchantSignOnline返回参数结构体
    public struct QueryOpenBankSubMerchantSignOnlineResponse: TCResponse {
        /// 错误码。
        public let errCode: String

        /// 错误信息。
        public let errMessage: String

        /// 返回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: QueryOpenBankSubMerchantSignOnlineResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云企付-子商户在线签约查询
    ///
    /// 子商户在线签约查询
    @inlinable
    public func queryOpenBankSubMerchantSignOnline(_ input: QueryOpenBankSubMerchantSignOnlineRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOpenBankSubMerchantSignOnlineResponse> {
        self.client.execute(action: "QueryOpenBankSubMerchantSignOnline", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-子商户在线签约查询
    ///
    /// 子商户在线签约查询
    @inlinable
    public func queryOpenBankSubMerchantSignOnline(_ input: QueryOpenBankSubMerchantSignOnlineRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOpenBankSubMerchantSignOnlineResponse {
        try await self.client.execute(action: "QueryOpenBankSubMerchantSignOnline", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云企付-子商户在线签约查询
    ///
    /// 子商户在线签约查询
    @inlinable
    public func queryOpenBankSubMerchantSignOnline(channelMerchantId: String, channelName: String, outSubMerchantId: String? = nil, channelSubMerchantId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOpenBankSubMerchantSignOnlineResponse> {
        self.queryOpenBankSubMerchantSignOnline(.init(channelMerchantId: channelMerchantId, channelName: channelName, outSubMerchantId: outSubMerchantId, channelSubMerchantId: channelSubMerchantId), region: region, logger: logger, on: eventLoop)
    }

    /// 云企付-子商户在线签约查询
    ///
    /// 子商户在线签约查询
    @inlinable
    public func queryOpenBankSubMerchantSignOnline(channelMerchantId: String, channelName: String, outSubMerchantId: String? = nil, channelSubMerchantId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOpenBankSubMerchantSignOnlineResponse {
        try await self.queryOpenBankSubMerchantSignOnline(.init(channelMerchantId: channelMerchantId, channelName: channelName, outSubMerchantId: outSubMerchantId, channelSubMerchantId: channelSubMerchantId), region: region, logger: logger, on: eventLoop)
    }
}
