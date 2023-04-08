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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Cr {
    /// DescribeCreditResult请求参数结构体
    public struct DescribeCreditResultRequest: TCRequestModel {
        /// 模块名，本接口取值：Credit
        public let module: String

        /// 操作名，本接口取值：Get
        public let operation: String

        /// 实例ID
        public let instId: String

        /// 产品ID，形如P******。
        public let productId: String

        /// 信审任务ID
        public let caseId: String

        /// 请求日期，格式为YYYY-MM-DD
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var requestDate: Date

        public init(module: String, operation: String, instId: String, productId: String, caseId: String, requestDate: Date) {
            self.module = module
            self.operation = operation
            self.instId = instId
            self.productId = productId
            self.caseId = caseId
            self._requestDate = .init(wrappedValue: requestDate)
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case instId = "InstId"
            case productId = "ProductId"
            case caseId = "CaseId"
            case requestDate = "RequestDate"
        }
    }

    /// DescribeCreditResult返回参数结构体
    public struct DescribeCreditResultResponse: TCResponseModel {
        /// <p>呼叫结果，取值范围：</p><ul style="margin-bottom:0px;"><li>NON：接通</li><li>DBU：号码忙</li><li>DRF：不在服务区</li><li>ANA：欠费未接听</li><li>REJ：拒接</li><li>SHU：关机</li><li>NAN：空号</li><li>HAL：停机</li><li>DAD：未接听</li><li>EXE：其他异常</li></ul>
        public let resultCode: String

        /// 客户标识代码，多个标识码以英文逗号分隔，ResultCode为NON时才有。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clientCode: String?

        /// 开始振铃时间，ResultCode为NON或DAD时才有此字段。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var ringStartTime: Date?

        /// 振铃时长
        public let ringDuration: Int64

        /// 接通时长
        public let answerDuration: Int64

        /// JSON格式的扩展信息字段，ResultCode为NON时才有。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let contextValue: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resultCode = "ResultCode"
            case clientCode = "ClientCode"
            case ringStartTime = "RingStartTime"
            case ringDuration = "RingDuration"
            case answerDuration = "AnswerDuration"
            case contextValue = "ContextValue"
            case requestId = "RequestId"
        }
    }

    /// 获取信审结果
    ///
    /// 根据信审任务ID和请求日期，获取相关信审结果。
    @inlinable
    public func describeCreditResult(_ input: DescribeCreditResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCreditResultResponse> {
        self.client.execute(action: "DescribeCreditResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取信审结果
    ///
    /// 根据信审任务ID和请求日期，获取相关信审结果。
    @inlinable
    public func describeCreditResult(_ input: DescribeCreditResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCreditResultResponse {
        try await self.client.execute(action: "DescribeCreditResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取信审结果
    ///
    /// 根据信审任务ID和请求日期，获取相关信审结果。
    @inlinable
    public func describeCreditResult(module: String, operation: String, instId: String, productId: String, caseId: String, requestDate: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCreditResultResponse> {
        self.describeCreditResult(.init(module: module, operation: operation, instId: instId, productId: productId, caseId: caseId, requestDate: requestDate), region: region, logger: logger, on: eventLoop)
    }

    /// 获取信审结果
    ///
    /// 根据信审任务ID和请求日期，获取相关信审结果。
    @inlinable
    public func describeCreditResult(module: String, operation: String, instId: String, productId: String, caseId: String, requestDate: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCreditResultResponse {
        try await self.describeCreditResult(.init(module: module, operation: operation, instId: instId, productId: productId, caseId: caseId, requestDate: requestDate), region: region, logger: logger, on: eventLoop)
    }
}
