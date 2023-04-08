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

extension Iotvideoindustry {
    /// CreateDevice请求参数结构体
    public struct CreateDeviceRequest: TCRequestModel {
        /// 设备名称
        public let nickName: String

        /// 设备密码
        public let passWord: String

        /// 设备类型，1：国标VMS设备(公有云不支持此类型)，2：国标IPC设备，3：国标NVR设备，9：智能告警设备(公有云不支持此类型)
        public let deviceType: Int64?

        /// 设备需要绑定的分组ID，参数为空则默认绑定到根分组
        public let groupId: String?

        public init(nickName: String, passWord: String, deviceType: Int64? = nil, groupId: String? = nil) {
            self.nickName = nickName
            self.passWord = passWord
            self.deviceType = deviceType
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case nickName = "NickName"
            case passWord = "PassWord"
            case deviceType = "DeviceType"
            case groupId = "GroupId"
        }
    }

    /// CreateDevice返回参数结构体
    public struct CreateDeviceResponse: TCResponseModel {
        /// 设备编码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deviceCode: String?

        /// 设备唯一标识
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deviceId: String?

        /// 设备虚拟组信息，仅在创建NVR时返回该值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let virtualGroupId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case deviceCode = "DeviceCode"
            case deviceId = "DeviceId"
            case virtualGroupId = "VirtualGroupId"
            case requestId = "RequestId"
        }
    }

    /// 创建设备
    ///
    /// 本接口(CreateDevice) 用于创建设备。
    @inlinable
    public func createDevice(_ input: CreateDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDeviceResponse> {
        self.client.execute(action: "CreateDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建设备
    ///
    /// 本接口(CreateDevice) 用于创建设备。
    @inlinable
    public func createDevice(_ input: CreateDeviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDeviceResponse {
        try await self.client.execute(action: "CreateDevice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建设备
    ///
    /// 本接口(CreateDevice) 用于创建设备。
    @inlinable
    public func createDevice(nickName: String, passWord: String, deviceType: Int64? = nil, groupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDeviceResponse> {
        self.createDevice(.init(nickName: nickName, passWord: passWord, deviceType: deviceType, groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建设备
    ///
    /// 本接口(CreateDevice) 用于创建设备。
    @inlinable
    public func createDevice(nickName: String, passWord: String, deviceType: Int64? = nil, groupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDeviceResponse {
        try await self.createDevice(.init(nickName: nickName, passWord: passWord, deviceType: deviceType, groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
