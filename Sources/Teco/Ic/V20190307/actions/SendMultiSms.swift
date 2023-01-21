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

extension Ic {
    /// SendMultiSms请求参数结构体
    public struct SendMultiSmsRequest: TCRequestModel {
        /// 应用ID
        public let sdkappid: String

        /// 卡片列表
        public let iccids: [String]

        /// 短信内容 长度限制 70
        public let content: String

        public init(sdkappid: String, iccids: [String], content: String) {
            self.sdkappid = sdkappid
            self.iccids = iccids
            self.content = content
        }

        enum CodingKeys: String, CodingKey {
            case sdkappid = "Sdkappid"
            case iccids = "Iccids"
            case content = "Content"
        }
    }

    /// SendMultiSms返回参数结构体
    public struct SendMultiSmsResponse: TCResponseModel {
        /// 短信流水数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [SmsRet]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 群发短信接口
    ///
    /// 群发短信
    @inlinable
    public func sendMultiSms(_ input: SendMultiSmsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendMultiSmsResponse> {
        self.client.execute(action: "SendMultiSms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 群发短信接口
    ///
    /// 群发短信
    @inlinable
    public func sendMultiSms(_ input: SendMultiSmsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendMultiSmsResponse {
        try await self.client.execute(action: "SendMultiSms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 群发短信接口
    ///
    /// 群发短信
    @inlinable
    public func sendMultiSms(sdkappid: String, iccids: [String], content: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendMultiSmsResponse> {
        self.sendMultiSms(SendMultiSmsRequest(sdkappid: sdkappid, iccids: iccids, content: content), region: region, logger: logger, on: eventLoop)
    }

    /// 群发短信接口
    ///
    /// 群发短信
    @inlinable
    public func sendMultiSms(sdkappid: String, iccids: [String], content: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendMultiSmsResponse {
        try await self.sendMultiSms(SendMultiSmsRequest(sdkappid: sdkappid, iccids: iccids, content: content), region: region, logger: logger, on: eventLoop)
    }
}
