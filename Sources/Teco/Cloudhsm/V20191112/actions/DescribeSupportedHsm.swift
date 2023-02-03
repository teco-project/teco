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

extension Cloudhsm {
    /// DescribeSupportedHsm请求参数结构体
    public struct DescribeSupportedHsmRequest: TCRequestModel {
        /// Hsm类型，可选值all、virtulization、GHSM、EHSM、SHSM
        public let hsmType: String?

        public init(hsmType: String? = nil) {
            self.hsmType = hsmType
        }

        enum CodingKeys: String, CodingKey {
            case hsmType = "HsmType"
        }
    }

    /// DescribeSupportedHsm返回参数结构体
    public struct DescribeSupportedHsmResponse: TCResponseModel {
        /// 当前地域所支持的设备列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deviceTypes: [DeviceInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case deviceTypes = "DeviceTypes"
            case requestId = "RequestId"
        }
    }

    /// 获取当前地域所支持的设备列表
    @inlinable
    public func describeSupportedHsm(_ input: DescribeSupportedHsmRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSupportedHsmResponse> {
        self.client.execute(action: "DescribeSupportedHsm", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取当前地域所支持的设备列表
    @inlinable
    public func describeSupportedHsm(_ input: DescribeSupportedHsmRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSupportedHsmResponse {
        try await self.client.execute(action: "DescribeSupportedHsm", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取当前地域所支持的设备列表
    @inlinable
    public func describeSupportedHsm(hsmType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSupportedHsmResponse> {
        let input = DescribeSupportedHsmRequest(hsmType: hsmType)
        return self.client.execute(action: "DescribeSupportedHsm", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取当前地域所支持的设备列表
    @inlinable
    public func describeSupportedHsm(hsmType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSupportedHsmResponse {
        let input = DescribeSupportedHsmRequest(hsmType: hsmType)
        return try await self.client.execute(action: "DescribeSupportedHsm", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
