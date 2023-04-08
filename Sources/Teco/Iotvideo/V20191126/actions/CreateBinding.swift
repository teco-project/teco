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

import TecoCore

extension Iotvideo {
    /// CreateBinding请求参数结构体
    public struct CreateBindingRequest: TCRequestModel {
        /// 终端用户在IoT Video上的唯一标识ID
        public let accessId: String

        /// 设备TID
        public let tid: String

        /// 用户角色，owner：主人，guest：访客
        public let role: String

        /// 是否踢掉之前的主人，true：踢掉；false：不踢掉。当role为guest时，可以不填
        public let forceBind: Bool?

        /// 设备昵称，最多不超过64个字符
        public let nick: String?

        /// 绑定过程中的会话token，由设备通过SDK接口确认是否允许绑定的token，用于增加设备被绑定的安全性
        public let bindToken: String?

        public init(accessId: String, tid: String, role: String, forceBind: Bool? = nil, nick: String? = nil, bindToken: String? = nil) {
            self.accessId = accessId
            self.tid = tid
            self.role = role
            self.forceBind = forceBind
            self.nick = nick
            self.bindToken = bindToken
        }

        enum CodingKeys: String, CodingKey {
            case accessId = "AccessId"
            case tid = "Tid"
            case role = "Role"
            case forceBind = "ForceBind"
            case nick = "Nick"
            case bindToken = "BindToken"
        }
    }

    /// CreateBinding返回参数结构体
    public struct CreateBindingResponse: TCResponseModel {
        /// 访问设备的AccessToken
        public let accessToken: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case accessToken = "AccessToken"
            case requestId = "RequestId"
        }
    }

    /// 终端用户绑定设备
    ///
    /// 本接口（CreateBinding）用于终端用户和设备进行绑定，具体的应用场景如下：
    ///     终端用户与设备具有“强关联”关系。用户与设备绑定之后，用户终端即具备了该设备的访问权限,访问或操作设备时，无需获取设备访问Token。
    @inlinable
    public func createBinding(_ input: CreateBindingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBindingResponse> {
        self.client.execute(action: "CreateBinding", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 终端用户绑定设备
    ///
    /// 本接口（CreateBinding）用于终端用户和设备进行绑定，具体的应用场景如下：
    ///     终端用户与设备具有“强关联”关系。用户与设备绑定之后，用户终端即具备了该设备的访问权限,访问或操作设备时，无需获取设备访问Token。
    @inlinable
    public func createBinding(_ input: CreateBindingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBindingResponse {
        try await self.client.execute(action: "CreateBinding", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 终端用户绑定设备
    ///
    /// 本接口（CreateBinding）用于终端用户和设备进行绑定，具体的应用场景如下：
    ///     终端用户与设备具有“强关联”关系。用户与设备绑定之后，用户终端即具备了该设备的访问权限,访问或操作设备时，无需获取设备访问Token。
    @inlinable
    public func createBinding(accessId: String, tid: String, role: String, forceBind: Bool? = nil, nick: String? = nil, bindToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBindingResponse> {
        self.createBinding(.init(accessId: accessId, tid: tid, role: role, forceBind: forceBind, nick: nick, bindToken: bindToken), region: region, logger: logger, on: eventLoop)
    }

    /// 终端用户绑定设备
    ///
    /// 本接口（CreateBinding）用于终端用户和设备进行绑定，具体的应用场景如下：
    ///     终端用户与设备具有“强关联”关系。用户与设备绑定之后，用户终端即具备了该设备的访问权限,访问或操作设备时，无需获取设备访问Token。
    @inlinable
    public func createBinding(accessId: String, tid: String, role: String, forceBind: Bool? = nil, nick: String? = nil, bindToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBindingResponse {
        try await self.createBinding(.init(accessId: accessId, tid: tid, role: role, forceBind: forceBind, nick: nick, bindToken: bindToken), region: region, logger: logger, on: eventLoop)
    }
}
