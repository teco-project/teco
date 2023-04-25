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

extension Billing {
    /// DescribeDosageCosDetailByDate请求参数结构体
    public struct DescribeDosageCosDetailByDateRequest: TCRequestModel {
        /// 查询用量开始时间，例如：2020-09-01
        public let startDate: String

        /// 查询用量结束时间，例如：2020-09-30（与开始时间同月，不支持跨月查询）
        public let endDate: String

        /// COS 存储桶名称，可通过Get Service 接口是用来获取请求者名下的所有存储空间列表（Bucket list）https://cloud.tencent.com/document/product/436/8291
        public let bucketName: String

        public init(startDate: String, endDate: String, bucketName: String) {
            self.startDate = startDate
            self.endDate = endDate
            self.bucketName = bucketName
        }

        enum CodingKeys: String, CodingKey {
            case startDate = "StartDate"
            case endDate = "EndDate"
            case bucketName = "BucketName"
        }
    }

    /// DescribeDosageCosDetailByDate返回参数结构体
    public struct DescribeDosageCosDetailByDateResponse: TCResponseModel {
        /// 用量数组
        public let detailSets: [CosDetailSets]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case detailSets = "DetailSets"
            case requestId = "RequestId"
        }
    }

    /// 获取COS产品用量明细
    @inlinable
    public func describeDosageCosDetailByDate(_ input: DescribeDosageCosDetailByDateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDosageCosDetailByDateResponse> {
        self.client.execute(action: "DescribeDosageCosDetailByDate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取COS产品用量明细
    @inlinable
    public func describeDosageCosDetailByDate(_ input: DescribeDosageCosDetailByDateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDosageCosDetailByDateResponse {
        try await self.client.execute(action: "DescribeDosageCosDetailByDate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取COS产品用量明细
    @inlinable
    public func describeDosageCosDetailByDate(startDate: String, endDate: String, bucketName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDosageCosDetailByDateResponse> {
        self.describeDosageCosDetailByDate(.init(startDate: startDate, endDate: endDate, bucketName: bucketName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取COS产品用量明细
    @inlinable
    public func describeDosageCosDetailByDate(startDate: String, endDate: String, bucketName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDosageCosDetailByDateResponse {
        try await self.describeDosageCosDetailByDate(.init(startDate: startDate, endDate: endDate, bucketName: bucketName), region: region, logger: logger, on: eventLoop)
    }
}
