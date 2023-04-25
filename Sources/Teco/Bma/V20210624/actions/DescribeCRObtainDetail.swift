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

extension Bma {
    /// DescribeCRObtainDetail请求参数结构体
    public struct DescribeCRObtainDetailRequest: TCRequestModel {
        /// 侵权ID
        public let tortId: Int64

        public init(tortId: Int64) {
            self.tortId = tortId
        }

        enum CodingKeys: String, CodingKey {
            case tortId = "TortId"
        }
    }

    /// DescribeCRObtainDetail返回参数结构体
    public struct DescribeCRObtainDetailResponse: TCResponseModel {
        /// 作品名称
        public let workName: String

        /// 侵权链接
        public let tortURL: String

        /// 取证时间
        public let obtainTime: String

        /// 取证类型
        public let obtainType: String

        /// 取证号
        public let obtainNum: String

        /// 证据地址
        public let depositFile: String

        /// 公证信息地址
        public let depositCert: String

        /// 内容类型
        public let workType: String

        /// 作品类型
        public let workCategory: String

        /// 侵权ID
        public let tortId: Int64

        /// 侵权编号
        public let tortNum: String

        /// 取证状态
        public let obtainStatus: Int64

        /// 取证状态说明
        public let obtainNote: String

        /// 取证时长
        public let obtainDuration: String

        /// 取证名称
        public let obtainName: String

        /// 取证公证信息
        public let depositPdfCert: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case workName = "WorkName"
            case tortURL = "TortURL"
            case obtainTime = "ObtainTime"
            case obtainType = "ObtainType"
            case obtainNum = "ObtainNum"
            case depositFile = "DepositFile"
            case depositCert = "DepositCert"
            case workType = "WorkType"
            case workCategory = "WorkCategory"
            case tortId = "TortId"
            case tortNum = "TortNum"
            case obtainStatus = "ObtainStatus"
            case obtainNote = "ObtainNote"
            case obtainDuration = "ObtainDuration"
            case obtainName = "ObtainName"
            case depositPdfCert = "DepositPdfCert"
            case requestId = "RequestId"
        }
    }

    /// 查询取证详情
    @inlinable
    public func describeCRObtainDetail(_ input: DescribeCRObtainDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCRObtainDetailResponse> {
        self.client.execute(action: "DescribeCRObtainDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询取证详情
    @inlinable
    public func describeCRObtainDetail(_ input: DescribeCRObtainDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCRObtainDetailResponse {
        try await self.client.execute(action: "DescribeCRObtainDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询取证详情
    @inlinable
    public func describeCRObtainDetail(tortId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCRObtainDetailResponse> {
        self.describeCRObtainDetail(.init(tortId: tortId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询取证详情
    @inlinable
    public func describeCRObtainDetail(tortId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCRObtainDetailResponse {
        try await self.describeCRObtainDetail(.init(tortId: tortId), region: region, logger: logger, on: eventLoop)
    }
}
