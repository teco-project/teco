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

extension Iotvideo {
    /// ClearDeviceActiveCode请求参数结构体
    public struct ClearDeviceActiveCodeRequest: TCRequestModel {
        /// 设备TID列表，0<元素数量<=100
        public let tids: [String]

        public init(tids: [String]) {
            self.tids = tids
        }

        enum CodingKeys: String, CodingKey {
            case tids = "Tids"
        }
    }

    /// ClearDeviceActiveCode返回参数结构体
    public struct ClearDeviceActiveCodeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 清除设备激活码
    @inlinable
    public func clearDeviceActiveCode(_ input: ClearDeviceActiveCodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ClearDeviceActiveCodeResponse > {
        self.client.execute(action: "ClearDeviceActiveCode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 清除设备激活码
    @inlinable
    public func clearDeviceActiveCode(_ input: ClearDeviceActiveCodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ClearDeviceActiveCodeResponse {
        try await self.client.execute(action: "ClearDeviceActiveCode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 清除设备激活码
    @inlinable
    public func clearDeviceActiveCode(tids: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ClearDeviceActiveCodeResponse > {
        self.clearDeviceActiveCode(ClearDeviceActiveCodeRequest(tids: tids), logger: logger, on: eventLoop)
    }

    /// 清除设备激活码
    @inlinable
    public func clearDeviceActiveCode(tids: [String], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ClearDeviceActiveCodeResponse {
        try await self.clearDeviceActiveCode(ClearDeviceActiveCodeRequest(tids: tids), logger: logger, on: eventLoop)
    }
}
