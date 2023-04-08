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

extension Ess {
    /// DisableUserAutoSign请求参数结构体
    public struct DisableUserAutoSignRequest: TCRequestModel {
        /// 操作人信息
        public let `operator`: UserInfo

        /// 自动签场景:
        /// E_PRESCRIPTION_AUTO_SIGN 电子处方
        public let sceneKey: String

        /// 关闭自动签的个人的三要素
        public let userInfo: UserThreeFactor

        public init(operator: UserInfo, sceneKey: String, userInfo: UserThreeFactor) {
            self.operator = `operator`
            self.sceneKey = sceneKey
            self.userInfo = userInfo
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case sceneKey = "SceneKey"
            case userInfo = "UserInfo"
        }
    }

    /// DisableUserAutoSign返回参数结构体
    public struct DisableUserAutoSignResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 关闭个人自动签功能
    ///
    /// 企业方可以通过此接口关闭个人的自动签功能
    @inlinable @discardableResult
    public func disableUserAutoSign(_ input: DisableUserAutoSignRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableUserAutoSignResponse> {
        self.client.execute(action: "DisableUserAutoSign", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 关闭个人自动签功能
    ///
    /// 企业方可以通过此接口关闭个人的自动签功能
    @inlinable @discardableResult
    public func disableUserAutoSign(_ input: DisableUserAutoSignRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableUserAutoSignResponse {
        try await self.client.execute(action: "DisableUserAutoSign", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 关闭个人自动签功能
    ///
    /// 企业方可以通过此接口关闭个人的自动签功能
    @inlinable @discardableResult
    public func disableUserAutoSign(operator: UserInfo, sceneKey: String, userInfo: UserThreeFactor, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableUserAutoSignResponse> {
        self.disableUserAutoSign(.init(operator: `operator`, sceneKey: sceneKey, userInfo: userInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 关闭个人自动签功能
    ///
    /// 企业方可以通过此接口关闭个人的自动签功能
    @inlinable @discardableResult
    public func disableUserAutoSign(operator: UserInfo, sceneKey: String, userInfo: UserThreeFactor, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableUserAutoSignResponse {
        try await self.disableUserAutoSign(.init(operator: `operator`, sceneKey: sceneKey, userInfo: userInfo), region: region, logger: logger, on: eventLoop)
    }
}
