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

extension Domain {
    /// TransferInDomainBatch请求参数结构体
    public struct TransferInDomainBatchRequest: TCRequest {
        /// 转入的域名名称数组。
        public let domains: [String]

        /// 域名转移码数组。
        public let passWords: [String]

        /// 模板ID。
        public let templateId: String

        /// 付费模式 0手动在线付费，1使用余额付费。
        public let payMode: Int64

        /// 自动续费开关。有两个可选值：
        /// 0 表示关闭，不自动续费（默认值）
        /// 1 表示开启，将自动续费
        public let autoRenewFlag: Int64?

        /// true： 开启60天内禁止转移注册商锁定
        /// false：关闭60天内禁止转移注册商锁定
        /// 默认 true
        public let lockTransfer: Bool?

        /// 是否开启更新锁：0=默认不开启，1=开启
        public let updateProhibition: Int64?

        /// 是否开启转移锁：0=默认不开启，1=开启
        public let transferProhibition: Int64?

        /// 渠道来源，pc/miniprogram/h5等
        public let channelFrom: String?

        /// 订单来源，common正常/dianshi_active点石活动等
        public let orderFrom: String?

        /// 活动id
        public let activityId: String?

        public init(domains: [String], passWords: [String], templateId: String, payMode: Int64, autoRenewFlag: Int64? = nil, lockTransfer: Bool? = nil, updateProhibition: Int64? = nil, transferProhibition: Int64? = nil, channelFrom: String? = nil, orderFrom: String? = nil, activityId: String? = nil) {
            self.domains = domains
            self.passWords = passWords
            self.templateId = templateId
            self.payMode = payMode
            self.autoRenewFlag = autoRenewFlag
            self.lockTransfer = lockTransfer
            self.updateProhibition = updateProhibition
            self.transferProhibition = transferProhibition
            self.channelFrom = channelFrom
            self.orderFrom = orderFrom
            self.activityId = activityId
        }

        enum CodingKeys: String, CodingKey {
            case domains = "Domains"
            case passWords = "PassWords"
            case templateId = "TemplateId"
            case payMode = "PayMode"
            case autoRenewFlag = "AutoRenewFlag"
            case lockTransfer = "LockTransfer"
            case updateProhibition = "UpdateProhibition"
            case transferProhibition = "TransferProhibition"
            case channelFrom = "ChannelFrom"
            case orderFrom = "OrderFrom"
            case activityId = "ActivityId"
        }
    }

    /// TransferInDomainBatch返回参数结构体
    public struct TransferInDomainBatchResponse: TCResponse {
        /// 日志ID
        public let logId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case logId = "LogId"
            case requestId = "RequestId"
        }
    }

    /// 批量域名转入
    ///
    /// 本接口 ( TransferInDomainBatch ) 用于批量转入域名 。
    @inlinable
    public func transferInDomainBatch(_ input: TransferInDomainBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TransferInDomainBatchResponse> {
        self.client.execute(action: "TransferInDomainBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量域名转入
    ///
    /// 本接口 ( TransferInDomainBatch ) 用于批量转入域名 。
    @inlinable
    public func transferInDomainBatch(_ input: TransferInDomainBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TransferInDomainBatchResponse {
        try await self.client.execute(action: "TransferInDomainBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量域名转入
    ///
    /// 本接口 ( TransferInDomainBatch ) 用于批量转入域名 。
    @inlinable
    public func transferInDomainBatch(domains: [String], passWords: [String], templateId: String, payMode: Int64, autoRenewFlag: Int64? = nil, lockTransfer: Bool? = nil, updateProhibition: Int64? = nil, transferProhibition: Int64? = nil, channelFrom: String? = nil, orderFrom: String? = nil, activityId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TransferInDomainBatchResponse> {
        self.transferInDomainBatch(.init(domains: domains, passWords: passWords, templateId: templateId, payMode: payMode, autoRenewFlag: autoRenewFlag, lockTransfer: lockTransfer, updateProhibition: updateProhibition, transferProhibition: transferProhibition, channelFrom: channelFrom, orderFrom: orderFrom, activityId: activityId), region: region, logger: logger, on: eventLoop)
    }

    /// 批量域名转入
    ///
    /// 本接口 ( TransferInDomainBatch ) 用于批量转入域名 。
    @inlinable
    public func transferInDomainBatch(domains: [String], passWords: [String], templateId: String, payMode: Int64, autoRenewFlag: Int64? = nil, lockTransfer: Bool? = nil, updateProhibition: Int64? = nil, transferProhibition: Int64? = nil, channelFrom: String? = nil, orderFrom: String? = nil, activityId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TransferInDomainBatchResponse {
        try await self.transferInDomainBatch(.init(domains: domains, passWords: passWords, templateId: templateId, payMode: payMode, autoRenewFlag: autoRenewFlag, lockTransfer: lockTransfer, updateProhibition: updateProhibition, transferProhibition: transferProhibition, channelFrom: channelFrom, orderFrom: orderFrom, activityId: activityId), region: region, logger: logger, on: eventLoop)
    }
}
