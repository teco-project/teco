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

extension Cwp {
    /// DescribeSaveOrUpdateWarnings请求参数结构体
    public struct DescribeSaveOrUpdateWarningsRequest: TCRequestModel {
        /// 告警设置的修改内容
        public let warningObjects: [WarningObject]?

        public init(warningObjects: [WarningObject]? = nil) {
            self.warningObjects = warningObjects
        }

        enum CodingKeys: String, CodingKey {
            case warningObjects = "WarningObjects"
        }
    }

    /// DescribeSaveOrUpdateWarnings返回参数结构体
    public struct DescribeSaveOrUpdateWarningsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新用户告警设置
    ///
    /// 更新或者插入用户告警设置(该接口废弃,请调用 ModifyWarningSetting )
    @inlinable @discardableResult
    public func describeSaveOrUpdateWarnings(_ input: DescribeSaveOrUpdateWarningsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSaveOrUpdateWarningsResponse> {
        self.client.execute(action: "DescribeSaveOrUpdateWarnings", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新用户告警设置
    ///
    /// 更新或者插入用户告警设置(该接口废弃,请调用 ModifyWarningSetting )
    @inlinable @discardableResult
    public func describeSaveOrUpdateWarnings(_ input: DescribeSaveOrUpdateWarningsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSaveOrUpdateWarningsResponse {
        try await self.client.execute(action: "DescribeSaveOrUpdateWarnings", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新用户告警设置
    ///
    /// 更新或者插入用户告警设置(该接口废弃,请调用 ModifyWarningSetting )
    @inlinable @discardableResult
    public func describeSaveOrUpdateWarnings(warningObjects: [WarningObject]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSaveOrUpdateWarningsResponse> {
        self.describeSaveOrUpdateWarnings(.init(warningObjects: warningObjects), region: region, logger: logger, on: eventLoop)
    }

    /// 更新用户告警设置
    ///
    /// 更新或者插入用户告警设置(该接口废弃,请调用 ModifyWarningSetting )
    @inlinable @discardableResult
    public func describeSaveOrUpdateWarnings(warningObjects: [WarningObject]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSaveOrUpdateWarningsResponse {
        try await self.describeSaveOrUpdateWarnings(.init(warningObjects: warningObjects), region: region, logger: logger, on: eventLoop)
    }
}
