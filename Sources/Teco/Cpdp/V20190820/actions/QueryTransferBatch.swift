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
    /// QueryTransferBatch请求参数结构体
    public struct QueryTransferBatchRequest: TCPaginatedRequest {
        /// 商户号。
        /// 示例值：129284394
        public let merchantId: String

        /// 微信明细单号。
        /// 微信区分明细单返回的唯一标识。
        /// 示例值：1030000071100999991182020050700019480101
        public let needQueryDetail: Bool

        /// 商家批次单号。
        /// 商户系统内部的商家批次单号，此参数只能由数字、字母组成，商户系统内部唯一，UTF8编码，最多32个字符。
        /// 示例值：plfk2020042013
        public let merchantBatchNo: String?

        /// 是否查询账单明细。
        /// true-是；
        /// false-否，默认否。
        /// 商户可选择是否查询指定状态的转账明细单，当转账批次单状态为“FINISHED”（已完成）时，才会返回满足条件的转账明细单。
        /// 示例值：true
        public let batchId: String?

        /// 环境名:
        /// release: 现网环境
        /// sandbox: 沙箱环境
        /// development: 开发环境
        /// 缺省: release
        public let profile: String?

        /// 请求资源起始位置。
        /// 从0开始，默认值为0。
        /// 示例值：20
        public let offset: UInt64?

        /// 最大资源条数。
        /// 该次请求可返回的最大资源（转账明细单）条数，最小20条，最大100条，不传则默认20条。不足20条按实际条数返回
        /// 示例值：20
        public let limit: UInt64?

        /// 明细状态。
        /// ALL：全部，需要同时查询转账成功喝失败的明细单；
        /// SUCCESS：转账成功，只查询成功的明细单；
        /// FAIL：转账失败，只查询转账失败的明细单。
        /// 示例值：FAIL
        public let detailStatus: String?

        public init(merchantId: String, needQueryDetail: Bool, merchantBatchNo: String? = nil, batchId: String? = nil, profile: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, detailStatus: String? = nil) {
            self.merchantId = merchantId
            self.needQueryDetail = needQueryDetail
            self.merchantBatchNo = merchantBatchNo
            self.batchId = batchId
            self.profile = profile
            self.offset = offset
            self.limit = limit
            self.detailStatus = detailStatus
        }

        enum CodingKeys: String, CodingKey {
            case merchantId = "MerchantId"
            case needQueryDetail = "NeedQueryDetail"
            case merchantBatchNo = "MerchantBatchNo"
            case batchId = "BatchId"
            case profile = "Profile"
            case offset = "Offset"
            case limit = "Limit"
            case detailStatus = "DetailStatus"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: QueryTransferBatchResponse) -> QueryTransferBatchRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(merchantId: self.merchantId, needQueryDetail: self.needQueryDetail, merchantBatchNo: self.merchantBatchNo, batchId: self.batchId, profile: self.profile, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, detailStatus: self.detailStatus)
        }
    }

    /// QueryTransferBatch返回参数结构体
    public struct QueryTransferBatchResponse: TCPaginatedResponse {
        /// 商户号。
        /// 示例值：19300009329
        public let merchantId: String

        /// 商家批次单号。
        /// 商户系统内部的商家批次单号，此参数只能由数字、字母组成，商户系统内部唯一，UTF8编码，最多32个字符。
        /// 示例值：plfk2020042013
        public let merchantBatchNo: String

        /// 微信批次单号。
        /// 微信商家转账系统返回的唯一标识。
        /// 示例值：1030000071100999991182020050700019480001
        public let batchId: String

        /// 直连商户appId。
        /// 商户号绑定的appid。
        /// 示例值：wxf636efh567hg4356
        public let merchantAppId: String

        /// 批次状态。
        /// ACCEPTED:已受理，批次已受理成功，若发起批量转账的30分钟后，转账批次单仍处于该状态，可能原因是商户账户余额不足等。商户可查询账户资金流水，若该笔转账批次单的扣款已经发生，则表示批次已经进入转账中，请再次查单确认；
        /// PROCESSING:转账中，已开始处理批次内的转账明细单；
        /// FINISHED:已完成，批次内的所有转账明细单都已处理完成；
        /// CLOSED:已关闭，可查询具体的批次关闭原因确认；
        /// 示例值：ACCEPTED
        public let batchStatus: String

        /// 批次关闭原因。
        /// 如果批次单状态为“CLOSED”（已关闭），则有关闭原因；
        /// MERCHANT_REVOCATION：商户主动撤销；
        /// OVERDUE_CLOSE：系统超时关闭。
        /// 示例值：OVERDUE_CLOSE
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let closeReason: String?

        /// 转账总金额。
        /// 转账金额，单位为分。
        /// 示例值：4000000
        public let totalAmount: UInt64

        /// 转账总笔数。
        /// 一个转账批次最多允许发起三千笔转账。
        /// 示例值：200
        public let totalNum: UInt64

        /// 批次受理成功时返回，遵循rfc3339标准格式。格式为YYYY-MM-DDTHH:mm:ss.sss+TIMEZONE，YYYY-MM-DD表示年月日，T出现在字符串中，表示time元素的开头，HH:mm:ss.sss表示时分秒毫秒，TIMEZONE表示时区（+08:00表示东八区时间，领先UTC 8小时，即北京时间）。例如：2015-05-20T13:29:35.120+08:00表示北京时间2015年05月20日13点29分35秒。
        /// 示例值：2015-05-20T13:29:35.120+08:00
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// 批次最近一次更新时间，遵循rfc3339标准格式。格式为YYYY-MM-DDTHH:mm:ss.sss+TIMEZONE，YYYY-MM-DD表示年月日，T出现在字符串中，表示time元素的开头，HH:mm:ss.sss表示时分秒毫秒，TIMEZONE表示时区（+08:00表示东八区时间，领先UTC 8小时，即北京时间）。例如：2015-05-20T13:29:35.120+08:00表示北京时间2015年05月20日13点29分35秒。
        /// 示例值：2015-05-20T13:29:35.120+08:00
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: String?

        /// 转账成功金额。
        /// 转账成功的金额，单位为分，可能随时变化。
        /// 示例值：4000000
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let successAmount: UInt64?

        /// 转账成功的笔数。
        /// 可能随时变化。
        /// 示例值：200
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let successNum: UInt64?

        /// 转账失败金额。
        /// 转账失败的金额，单位为分，可能随时变化。
        /// 示例值：4000000
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failAmount: UInt64?

        /// 转账失败笔数。
        /// 可能随时变化。
        /// 示例值：200
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failNum: UInt64?

        /// 转账明细列表。
        /// 返回明细详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let transferDetails: [TransferDetailResponse]?

        /// 批次类型。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let batchType: String?

        /// 批次名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let batchName: String?

        /// 批次标注。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let batchRemark: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case merchantId = "MerchantId"
            case merchantBatchNo = "MerchantBatchNo"
            case batchId = "BatchId"
            case merchantAppId = "MerchantAppId"
            case batchStatus = "BatchStatus"
            case closeReason = "CloseReason"
            case totalAmount = "TotalAmount"
            case totalNum = "TotalNum"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case successAmount = "SuccessAmount"
            case successNum = "SuccessNum"
            case failAmount = "FailAmount"
            case failNum = "FailNum"
            case transferDetails = "TransferDetails"
            case batchType = "BatchType"
            case batchName = "BatchName"
            case batchRemark = "BatchRemark"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TransferDetailResponse`` list from the paginated response.
        public func getItems() -> [TransferDetailResponse] {
            self.transferDetails ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalNum
        }
    }

    /// 智慧薪酬-通过商家或者微信批次号查询批次单
    ///
    /// 通过商家批次单号或者微信批次号查询批次单
    @inlinable
    public func queryTransferBatch(_ input: QueryTransferBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryTransferBatchResponse> {
        self.client.execute(action: "QueryTransferBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 智慧薪酬-通过商家或者微信批次号查询批次单
    ///
    /// 通过商家批次单号或者微信批次号查询批次单
    @inlinable
    public func queryTransferBatch(_ input: QueryTransferBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryTransferBatchResponse {
        try await self.client.execute(action: "QueryTransferBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 智慧薪酬-通过商家或者微信批次号查询批次单
    ///
    /// 通过商家批次单号或者微信批次号查询批次单
    @inlinable
    public func queryTransferBatch(merchantId: String, needQueryDetail: Bool, merchantBatchNo: String? = nil, batchId: String? = nil, profile: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, detailStatus: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryTransferBatchResponse> {
        self.queryTransferBatch(.init(merchantId: merchantId, needQueryDetail: needQueryDetail, merchantBatchNo: merchantBatchNo, batchId: batchId, profile: profile, offset: offset, limit: limit, detailStatus: detailStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 智慧薪酬-通过商家或者微信批次号查询批次单
    ///
    /// 通过商家批次单号或者微信批次号查询批次单
    @inlinable
    public func queryTransferBatch(merchantId: String, needQueryDetail: Bool, merchantBatchNo: String? = nil, batchId: String? = nil, profile: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, detailStatus: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryTransferBatchResponse {
        try await self.queryTransferBatch(.init(merchantId: merchantId, needQueryDetail: needQueryDetail, merchantBatchNo: merchantBatchNo, batchId: batchId, profile: profile, offset: offset, limit: limit, detailStatus: detailStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 智慧薪酬-通过商家或者微信批次号查询批次单
    ///
    /// 通过商家批次单号或者微信批次号查询批次单
    @inlinable
    public func queryTransferBatchPaginated(_ input: QueryTransferBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TransferDetailResponse])> {
        self.client.paginate(input: input, region: region, command: self.queryTransferBatch, logger: logger, on: eventLoop)
    }

    /// 智慧薪酬-通过商家或者微信批次号查询批次单
    ///
    /// 通过商家批次单号或者微信批次号查询批次单
    @inlinable @discardableResult
    public func queryTransferBatchPaginated(_ input: QueryTransferBatchRequest, region: TCRegion? = nil, onResponse: @escaping (QueryTransferBatchResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.queryTransferBatch, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 智慧薪酬-通过商家或者微信批次号查询批次单
    ///
    /// 通过商家批次单号或者微信批次号查询批次单
    ///
    /// - Returns: `AsyncSequence`s of ``TransferDetailResponse`` and ``QueryTransferBatchResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func queryTransferBatchPaginator(_ input: QueryTransferBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<QueryTransferBatchRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.queryTransferBatch, logger: logger, on: eventLoop)
    }
}
