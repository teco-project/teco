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

extension Ic {
    /// ModifyUserCardRemark请求参数结构体
    public struct ModifyUserCardRemarkRequest: TCRequest {
        /// 应用ID
        public let sdkappid: Int64

        /// 物联卡ICCID
        public let iccid: String

        /// 备注信息，限50字
        public let remark: String?

        public init(sdkappid: Int64, iccid: String, remark: String? = nil) {
            self.sdkappid = sdkappid
            self.iccid = iccid
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case sdkappid = "Sdkappid"
            case iccid = "Iccid"
            case remark = "Remark"
        }
    }

    /// ModifyUserCardRemark返回参数结构体
    public struct ModifyUserCardRemarkResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 编辑卡片备注
    @inlinable @discardableResult
    public func modifyUserCardRemark(_ input: ModifyUserCardRemarkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyUserCardRemarkResponse> {
        self.client.execute(action: "ModifyUserCardRemark", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑卡片备注
    @inlinable @discardableResult
    public func modifyUserCardRemark(_ input: ModifyUserCardRemarkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyUserCardRemarkResponse {
        try await self.client.execute(action: "ModifyUserCardRemark", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑卡片备注
    @inlinable @discardableResult
    public func modifyUserCardRemark(sdkappid: Int64, iccid: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyUserCardRemarkResponse> {
        self.modifyUserCardRemark(.init(sdkappid: sdkappid, iccid: iccid, remark: remark), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑卡片备注
    @inlinable @discardableResult
    public func modifyUserCardRemark(sdkappid: Int64, iccid: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyUserCardRemarkResponse {
        try await self.modifyUserCardRemark(.init(sdkappid: sdkappid, iccid: iccid, remark: remark), region: region, logger: logger, on: eventLoop)
    }
}
