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

extension Npp {
    /// DescribeCallBackCdr请求参数结构体
    public struct DescribeCallBackCdrRequest: TCRequestModel {
        /// 业务appid
        public let bizAppId: String

        /// 回拨请求响应中返回的 callId，按 callId 查询该话单详细信息
        public let callId: String?

        /// 查询主叫用户产生的呼叫话单，如填空表示拉取这个时间段所有话单
        public let src: String?

        /// 话单开始时间戳
        public let startTimeStamp: String?

        /// 话单结束时间戳
        public let endTimeStamp: String?

        public init(bizAppId: String, callId: String? = nil, src: String? = nil, startTimeStamp: String? = nil, endTimeStamp: String? = nil) {
            self.bizAppId = bizAppId
            self.callId = callId
            self.src = src
            self.startTimeStamp = startTimeStamp
            self.endTimeStamp = endTimeStamp
        }

        enum CodingKeys: String, CodingKey {
            case bizAppId = "BizAppId"
            case callId = "CallId"
            case src = "Src"
            case startTimeStamp = "StartTimeStamp"
            case endTimeStamp = "EndTimeStamp"
        }
    }

    /// DescribeCallBackCdr返回参数结构体
    public struct DescribeCallBackCdrResponse: TCResponseModel {
        /// 话单列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cdr: [CallBackCdr]?

        /// 偏移
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let offset: String?

        /// 错误码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorCode: String?

        /// 错误原因
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case cdr = "Cdr"
            case offset = "Offset"
            case errorCode = "ErrorCode"
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }

    /// 回拨话单获取接口
    @inlinable
    public func describeCallBackCdr(_ input: DescribeCallBackCdrRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCallBackCdrResponse> {
        self.client.execute(action: "DescribeCallBackCdr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 回拨话单获取接口
    @inlinable
    public func describeCallBackCdr(_ input: DescribeCallBackCdrRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCallBackCdrResponse {
        try await self.client.execute(action: "DescribeCallBackCdr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 回拨话单获取接口
    @inlinable
    public func describeCallBackCdr(bizAppId: String, callId: String? = nil, src: String? = nil, startTimeStamp: String? = nil, endTimeStamp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCallBackCdrResponse> {
        let input = DescribeCallBackCdrRequest(bizAppId: bizAppId, callId: callId, src: src, startTimeStamp: startTimeStamp, endTimeStamp: endTimeStamp)
        return self.client.execute(action: "DescribeCallBackCdr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 回拨话单获取接口
    @inlinable
    public func describeCallBackCdr(bizAppId: String, callId: String? = nil, src: String? = nil, startTimeStamp: String? = nil, endTimeStamp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCallBackCdrResponse {
        let input = DescribeCallBackCdrRequest(bizAppId: bizAppId, callId: callId, src: src, startTimeStamp: startTimeStamp, endTimeStamp: endTimeStamp)
        return try await self.client.execute(action: "DescribeCallBackCdr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
