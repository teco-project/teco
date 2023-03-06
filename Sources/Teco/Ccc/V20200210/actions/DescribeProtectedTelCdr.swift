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

import TecoPaginationHelpers

extension Ccc {
    /// DescribeProtectedTelCdr请求参数结构体
    public struct DescribeProtectedTelCdrRequest: TCPaginatedRequest {
        /// 起始时间戳，Unix 秒级时间戳
        public let startTimeStamp: Int64

        /// 结束时间戳，Unix 秒级时间戳
        public let endTimeStamp: Int64

        /// 应用 ID，可以查看 https://console.cloud.tencent.com/ccc
        public let sdkAppId: UInt64

        /// 分页尺寸，上限 100
        public let pageSize: UInt64

        /// 分页页码，从 0 开始
        public let pageNumber: UInt64

        public init(startTimeStamp: Int64, endTimeStamp: Int64, sdkAppId: UInt64, pageSize: UInt64, pageNumber: UInt64) {
            self.startTimeStamp = startTimeStamp
            self.endTimeStamp = endTimeStamp
            self.sdkAppId = sdkAppId
            self.pageSize = pageSize
            self.pageNumber = pageNumber
        }

        enum CodingKeys: String, CodingKey {
            case startTimeStamp = "StartTimeStamp"
            case endTimeStamp = "EndTimeStamp"
            case sdkAppId = "SdkAppId"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeProtectedTelCdrResponse) -> DescribeProtectedTelCdrRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeProtectedTelCdrRequest(startTimeStamp: self.startTimeStamp, endTimeStamp: self.endTimeStamp, sdkAppId: self.sdkAppId, pageSize: self.pageSize, pageNumber: self.pageNumber + 1)
        }
    }

    /// DescribeProtectedTelCdr返回参数结构体
    public struct DescribeProtectedTelCdrResponse: TCPaginatedResponse {
        /// 话单记录总数
        public let totalCount: UInt64

        /// 话单记录
        public let telCdrs: [TelCdrInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case telCdrs = "TelCdrs"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TelCdrInfo] {
            self.telCdrs
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取主被叫受保护的电话服务记录与录音
    @inlinable
    public func describeProtectedTelCdr(_ input: DescribeProtectedTelCdrRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProtectedTelCdrResponse> {
        self.client.execute(action: "DescribeProtectedTelCdr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取主被叫受保护的电话服务记录与录音
    @inlinable
    public func describeProtectedTelCdr(_ input: DescribeProtectedTelCdrRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProtectedTelCdrResponse {
        try await self.client.execute(action: "DescribeProtectedTelCdr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取主被叫受保护的电话服务记录与录音
    @inlinable
    public func describeProtectedTelCdr(startTimeStamp: Int64, endTimeStamp: Int64, sdkAppId: UInt64, pageSize: UInt64, pageNumber: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProtectedTelCdrResponse> {
        let input = DescribeProtectedTelCdrRequest(startTimeStamp: startTimeStamp, endTimeStamp: endTimeStamp, sdkAppId: sdkAppId, pageSize: pageSize, pageNumber: pageNumber)
        return self.client.execute(action: "DescribeProtectedTelCdr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取主被叫受保护的电话服务记录与录音
    @inlinable
    public func describeProtectedTelCdr(startTimeStamp: Int64, endTimeStamp: Int64, sdkAppId: UInt64, pageSize: UInt64, pageNumber: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProtectedTelCdrResponse {
        let input = DescribeProtectedTelCdrRequest(startTimeStamp: startTimeStamp, endTimeStamp: endTimeStamp, sdkAppId: sdkAppId, pageSize: pageSize, pageNumber: pageNumber)
        return try await self.client.execute(action: "DescribeProtectedTelCdr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
