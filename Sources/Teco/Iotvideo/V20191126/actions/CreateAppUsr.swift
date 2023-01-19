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

extension Iotvideo {
    /// CreateAppUsr请求参数结构体
    public struct CreateAppUsrRequest: TCRequestModel {
        /// 标识用户的唯一ID，防止同一个用户多次注册
        public let cunionId: String

        /// 用于小程序关联手机号
        public let mobile: String?

        public init(cunionId: String, mobile: String? = nil) {
            self.cunionId = cunionId
            self.mobile = mobile
        }

        enum CodingKeys: String, CodingKey {
            case cunionId = "CunionId"
            case mobile = "Mobile"
        }
    }

    /// CreateAppUsr返回参数结构体
    public struct CreateAppUsrResponse: TCResponseModel {
        /// 厂商云标识用户的唯一ID
        public let cunionId: String

        /// 客户的终端用户在IoT Video上的唯一标识ID
        public let accessId: String

        /// 用户是否为新创建
        public let newRegist: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case cunionId = "CunionId"
            case accessId = "AccessId"
            case newRegist = "NewRegist"
            case requestId = "RequestId"
        }
    }

    /// 终端用户注册
    ///
    /// 本接口（CreateAppUsr）用于接收由厂商云发送过来的注册请求,建立厂商云终端用户与IoT Video终端用户的映射关系。
    @inlinable
    public func createAppUsr(_ input: CreateAppUsrRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAppUsrResponse> {
        self.client.execute(action: "CreateAppUsr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 终端用户注册
    ///
    /// 本接口（CreateAppUsr）用于接收由厂商云发送过来的注册请求,建立厂商云终端用户与IoT Video终端用户的映射关系。
    @inlinable
    public func createAppUsr(_ input: CreateAppUsrRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAppUsrResponse {
        try await self.client.execute(action: "CreateAppUsr", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 终端用户注册
    ///
    /// 本接口（CreateAppUsr）用于接收由厂商云发送过来的注册请求,建立厂商云终端用户与IoT Video终端用户的映射关系。
    @inlinable
    public func createAppUsr(cunionId: String, mobile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAppUsrResponse> {
        self.createAppUsr(CreateAppUsrRequest(cunionId: cunionId, mobile: mobile), region: region, logger: logger, on: eventLoop)
    }

    /// 终端用户注册
    ///
    /// 本接口（CreateAppUsr）用于接收由厂商云发送过来的注册请求,建立厂商云终端用户与IoT Video终端用户的映射关系。
    @inlinable
    public func createAppUsr(cunionId: String, mobile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAppUsrResponse {
        try await self.createAppUsr(CreateAppUsrRequest(cunionId: cunionId, mobile: mobile), region: region, logger: logger, on: eventLoop)
    }
}
