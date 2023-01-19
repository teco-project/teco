//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// Get400Cdr请求参数结构体
    public struct Get400CdrRequest: TCRequestModel {
        /// 业务appid
        public let bizAppId: String

        /// 通话唯一标识 callId，即直拨呼叫响应中返回的 callId
        public let callId: String?

        /// 查询主叫用户产生的呼叫话单（0086开头），设置为空表示拉取该时间段的所有话单
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

    /// Get400Cdr返回参数结构体
    public struct Get400CdrResponse: TCResponseModel {
        /// 错误码
        public let errorCode: String

        /// 错误原因
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msg: String?

        /// 偏移
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let offset: String?

        /// 话单列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cdr: [VirturalNumCdr]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case msg = "Msg"
            case offset = "Offset"
            case cdr = "Cdr"
            case requestId = "RequestId"
        }
    }

    /// 直拨话单获取接口
    @inlinable
    public func get400Cdr(_ input: Get400CdrRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Get400CdrResponse> {
        self.client.execute(action: "Get400Cdr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 直拨话单获取接口
    @inlinable
    public func get400Cdr(_ input: Get400CdrRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> Get400CdrResponse {
        try await self.client.execute(action: "Get400Cdr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 直拨话单获取接口
    @inlinable
    public func get400Cdr(bizAppId: String, callId: String? = nil, src: String? = nil, startTimeStamp: String? = nil, endTimeStamp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Get400CdrResponse> {
        self.get400Cdr(Get400CdrRequest(bizAppId: bizAppId, callId: callId, src: src, startTimeStamp: startTimeStamp, endTimeStamp: endTimeStamp), region: region, logger: logger, on: eventLoop)
    }

    /// 直拨话单获取接口
    @inlinable
    public func get400Cdr(bizAppId: String, callId: String? = nil, src: String? = nil, startTimeStamp: String? = nil, endTimeStamp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> Get400CdrResponse {
        try await self.get400Cdr(Get400CdrRequest(bizAppId: bizAppId, callId: callId, src: src, startTimeStamp: startTimeStamp, endTimeStamp: endTimeStamp), region: region, logger: logger, on: eventLoop)
    }
}
