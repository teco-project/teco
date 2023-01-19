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

extension Iottid {
    /// UploadDeviceUniqueCode请求参数结构体
    public struct UploadDeviceUniqueCodeRequest: TCRequestModel {
        /// 硬件唯一标识码
        public let codeSet: [String]

        /// 硬件标识码绑定的申请编号
        public let orderId: String

        public init(codeSet: [String], orderId: String) {
            self.codeSet = codeSet
            self.orderId = orderId
        }

        enum CodingKeys: String, CodingKey {
            case codeSet = "CodeSet"
            case orderId = "OrderId"
        }
    }

    /// UploadDeviceUniqueCode返回参数结构体
    public struct UploadDeviceUniqueCodeResponse: TCResponseModel {
        /// 本次已上传数量
        public let count: UInt64

        /// 重复的硬件唯一标识码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let existedCodeSet: [String]?

        /// 剩余可上传数量
        public let leftQuantity: UInt64

        /// 错误的硬件唯一标识码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let illegalCodeSet: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case count = "Count"
            case existedCodeSet = "ExistedCodeSet"
            case leftQuantity = "LeftQuantity"
            case illegalCodeSet = "IllegalCodeSet"
            case requestId = "RequestId"
        }
    }

    /// 上传硬件唯一标识码
    ///
    /// 上传硬件唯一标识码，是软加固设备身份参数。本接口如遇到错误数据，则所有当次上传数据失效。
    @inlinable
    public func uploadDeviceUniqueCode(_ input: UploadDeviceUniqueCodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadDeviceUniqueCodeResponse> {
        self.client.execute(action: "UploadDeviceUniqueCode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上传硬件唯一标识码
    ///
    /// 上传硬件唯一标识码，是软加固设备身份参数。本接口如遇到错误数据，则所有当次上传数据失效。
    @inlinable
    public func uploadDeviceUniqueCode(_ input: UploadDeviceUniqueCodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadDeviceUniqueCodeResponse {
        try await self.client.execute(action: "UploadDeviceUniqueCode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上传硬件唯一标识码
    ///
    /// 上传硬件唯一标识码，是软加固设备身份参数。本接口如遇到错误数据，则所有当次上传数据失效。
    @inlinable
    public func uploadDeviceUniqueCode(codeSet: [String], orderId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadDeviceUniqueCodeResponse> {
        self.uploadDeviceUniqueCode(UploadDeviceUniqueCodeRequest(codeSet: codeSet, orderId: orderId), region: region, logger: logger, on: eventLoop)
    }

    /// 上传硬件唯一标识码
    ///
    /// 上传硬件唯一标识码，是软加固设备身份参数。本接口如遇到错误数据，则所有当次上传数据失效。
    @inlinable
    public func uploadDeviceUniqueCode(codeSet: [String], orderId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadDeviceUniqueCodeResponse {
        try await self.uploadDeviceUniqueCode(UploadDeviceUniqueCodeRequest(codeSet: codeSet, orderId: orderId), region: region, logger: logger, on: eventLoop)
    }
}
