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

extension Ecm {
    /// ModifyAddressAttribute请求参数结构体
    public struct ModifyAddressAttributeRequest: TCRequestModel {
        /// ECM 地域
        public let ecmRegion: String

        /// 标识 EIP 的唯一 ID。EIP 唯一 ID 形如：eip-11112222。
        public let addressId: String

        /// 修改后的 EIP 名称。长度上限为20个字符。
        public let addressName: String?

        /// 设定EIP是否直通，"TRUE"表示直通，"FALSE"表示非直通。注意该参数仅对EIP直通功能可见的用户可以设定。
        public let eipDirectConnection: String?

        public init(ecmRegion: String, addressId: String, addressName: String? = nil, eipDirectConnection: String? = nil) {
            self.ecmRegion = ecmRegion
            self.addressId = addressId
            self.addressName = addressName
            self.eipDirectConnection = eipDirectConnection
        }

        enum CodingKeys: String, CodingKey {
            case ecmRegion = "EcmRegion"
            case addressId = "AddressId"
            case addressName = "AddressName"
            case eipDirectConnection = "EipDirectConnection"
        }
    }

    /// ModifyAddressAttribute返回参数结构体
    public struct ModifyAddressAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改弹性公网IP属性
    @inlinable @discardableResult
    public func modifyAddressAttribute(_ input: ModifyAddressAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAddressAttributeResponse> {
        self.client.execute(action: "ModifyAddressAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改弹性公网IP属性
    @inlinable @discardableResult
    public func modifyAddressAttribute(_ input: ModifyAddressAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAddressAttributeResponse {
        try await self.client.execute(action: "ModifyAddressAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改弹性公网IP属性
    @inlinable @discardableResult
    public func modifyAddressAttribute(ecmRegion: String, addressId: String, addressName: String? = nil, eipDirectConnection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAddressAttributeResponse> {
        self.modifyAddressAttribute(ModifyAddressAttributeRequest(ecmRegion: ecmRegion, addressId: addressId, addressName: addressName, eipDirectConnection: eipDirectConnection), region: region, logger: logger, on: eventLoop)
    }

    /// 修改弹性公网IP属性
    @inlinable @discardableResult
    public func modifyAddressAttribute(ecmRegion: String, addressId: String, addressName: String? = nil, eipDirectConnection: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAddressAttributeResponse {
        try await self.modifyAddressAttribute(ModifyAddressAttributeRequest(ecmRegion: ecmRegion, addressId: addressId, addressName: addressName, eipDirectConnection: eipDirectConnection), region: region, logger: logger, on: eventLoop)
    }
}
