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

extension Bma {
    /// CreateCRDesktopCode请求参数结构体
    public struct CreateCRDesktopCodeRequest: TCRequest {
        /// xxx
        public let tortId: Int64

        /// xxx
        public let desktopCode: String

        public init(tortId: Int64, desktopCode: String) {
            self.tortId = tortId
            self.desktopCode = desktopCode
        }

        enum CodingKeys: String, CodingKey {
            case tortId = "TortId"
            case desktopCode = "DesktopCode"
        }
    }

    /// CreateCRDesktopCode返回参数结构体
    public struct CreateCRDesktopCodeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 新建过程取证码
    @inlinable @discardableResult
    public func createCRDesktopCode(_ input: CreateCRDesktopCodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCRDesktopCodeResponse> {
        self.client.execute(action: "CreateCRDesktopCode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建过程取证码
    @inlinable @discardableResult
    public func createCRDesktopCode(_ input: CreateCRDesktopCodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCRDesktopCodeResponse {
        try await self.client.execute(action: "CreateCRDesktopCode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建过程取证码
    @inlinable @discardableResult
    public func createCRDesktopCode(tortId: Int64, desktopCode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCRDesktopCodeResponse> {
        self.createCRDesktopCode(.init(tortId: tortId, desktopCode: desktopCode), region: region, logger: logger, on: eventLoop)
    }

    /// 新建过程取证码
    @inlinable @discardableResult
    public func createCRDesktopCode(tortId: Int64, desktopCode: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCRDesktopCodeResponse {
        try await self.createCRDesktopCode(.init(tortId: tortId, desktopCode: desktopCode), region: region, logger: logger, on: eventLoop)
    }
}
