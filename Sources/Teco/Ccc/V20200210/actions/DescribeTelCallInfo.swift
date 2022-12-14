//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DescribeTelCallInfo请求参数结构体
    public struct DescribeTelCallInfoRequest: TCRequestModel {
        /// 起始时间戳，Unix 时间戳
        public let startTimeStamp: Int64

        /// 结束时间戳，Unix 时间戳，查询时间范围最大为90天
        public let endTimeStamp: Int64

        /// 应用ID列表，多个ID时，返回值为多个ID使用总和
        public let sdkAppIdList: [Int64]

        public init(startTimeStamp: Int64, endTimeStamp: Int64, sdkAppIdList: [Int64]) {
            self.startTimeStamp = startTimeStamp
            self.endTimeStamp = endTimeStamp
            self.sdkAppIdList = sdkAppIdList
        }

        enum CodingKeys: String, CodingKey {
            case startTimeStamp = "StartTimeStamp"
            case endTimeStamp = "EndTimeStamp"
            case sdkAppIdList = "SdkAppIdList"
        }
    }

    /// DescribeTelCallInfo返回参数结构体
    public struct DescribeTelCallInfoResponse: TCResponseModel {
        /// 呼出套餐包消耗分钟数
        public let telCallOutCount: Int64

        /// 呼入套餐包消耗分钟数
        public let telCallInCount: Int64

        /// 坐席使用统计个数
        public let seatUsedCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case telCallOutCount = "TelCallOutCount"
            case telCallInCount = "TelCallInCount"
            case seatUsedCount = "SeatUsedCount"
            case requestId = "RequestId"
        }
    }

    /// 按实例获取电话消耗统计
    @inlinable
    public func describeTelCallInfo(_ input: DescribeTelCallInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTelCallInfoResponse > {
        self.client.execute(action: "DescribeTelCallInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 按实例获取电话消耗统计
    @inlinable
    public func describeTelCallInfo(_ input: DescribeTelCallInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTelCallInfoResponse {
        try await self.client.execute(action: "DescribeTelCallInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 按实例获取电话消耗统计
    @inlinable
    public func describeTelCallInfo(startTimeStamp: Int64, endTimeStamp: Int64, sdkAppIdList: [Int64], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTelCallInfoResponse > {
        self.describeTelCallInfo(DescribeTelCallInfoRequest(startTimeStamp: startTimeStamp, endTimeStamp: endTimeStamp, sdkAppIdList: sdkAppIdList), logger: logger, on: eventLoop)
    }

    /// 按实例获取电话消耗统计
    @inlinable
    public func describeTelCallInfo(startTimeStamp: Int64, endTimeStamp: Int64, sdkAppIdList: [Int64], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTelCallInfoResponse {
        try await self.describeTelCallInfo(DescribeTelCallInfoRequest(startTimeStamp: startTimeStamp, endTimeStamp: endTimeStamp, sdkAppIdList: sdkAppIdList), logger: logger, on: eventLoop)
    }
}
