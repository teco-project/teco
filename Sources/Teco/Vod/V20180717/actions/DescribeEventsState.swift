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

extension Vod {
    /// DescribeEventsState请求参数结构体
    public struct DescribeEventsStateRequest: TCRequestModel {
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        public init(subAppId: UInt64? = nil) {
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
        }
    }

    /// DescribeEventsState返回参数结构体
    public struct DescribeEventsStateResponse: TCResponseModel {
        /// 待进行拉取的事件通知数，为近似值，约5秒延迟。
        public let countOfEventsToPull: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case countOfEventsToPull = "CountOfEventsToPull"
            case requestId = "RequestId"
        }
    }

    /// 获取事件通知状态
    ///
    /// * 该接口用于业务服务器获取 [可靠回调](https://cloud.tencent.com/document/product/266/33779#.E5.8F.AF.E9.9D.A0.E5.9B.9E.E8.B0.83) 事件通知的状态。
    @inlinable
    public func describeEventsState(_ input: DescribeEventsStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventsStateResponse> {
        self.client.execute(action: "DescribeEventsState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取事件通知状态
    ///
    /// * 该接口用于业务服务器获取 [可靠回调](https://cloud.tencent.com/document/product/266/33779#.E5.8F.AF.E9.9D.A0.E5.9B.9E.E8.B0.83) 事件通知的状态。
    @inlinable
    public func describeEventsState(_ input: DescribeEventsStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEventsStateResponse {
        try await self.client.execute(action: "DescribeEventsState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取事件通知状态
    ///
    /// * 该接口用于业务服务器获取 [可靠回调](https://cloud.tencent.com/document/product/266/33779#.E5.8F.AF.E9.9D.A0.E5.9B.9E.E8.B0.83) 事件通知的状态。
    @inlinable
    public func describeEventsState(subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEventsStateResponse> {
        self.describeEventsState(DescribeEventsStateRequest(subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取事件通知状态
    ///
    /// * 该接口用于业务服务器获取 [可靠回调](https://cloud.tencent.com/document/product/266/33779#.E5.8F.AF.E9.9D.A0.E5.9B.9E.E8.B0.83) 事件通知的状态。
    @inlinable
    public func describeEventsState(subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEventsStateResponse {
        try await self.describeEventsState(DescribeEventsStateRequest(subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
