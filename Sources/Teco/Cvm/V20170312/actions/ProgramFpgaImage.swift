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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cvm {
    /// ProgramFpgaImage请求参数结构体
    public struct ProgramFpgaImageRequest: TCRequestModel {
        /// 实例的ID信息。
        public let instanceId: String

        /// FPGA镜像文件的COS URL地址。
        public let fpgaUrl: String

        /// 实例上FPGA卡的DBDF号，不填默认烧录FPGA镜像到实例所拥有的所有FPGA卡。
        public let dbdFs: [String]?

        /// 试运行，不会执行实际的烧录动作，默认为False。
        public let dryRun: Bool?

        public init(instanceId: String, fpgaUrl: String, dbdFs: [String]? = nil, dryRun: Bool? = nil) {
            self.instanceId = instanceId
            self.fpgaUrl = fpgaUrl
            self.dbdFs = dbdFs
            self.dryRun = dryRun
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case fpgaUrl = "FPGAUrl"
            case dbdFs = "DBDFs"
            case dryRun = "DryRun"
        }
    }

    /// ProgramFpgaImage返回参数结构体
    public struct ProgramFpgaImageResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 在线烧录FPGA镜像
    ///
    /// 本接口(ProgramFpgaImage)用于在线烧录由客户提供的FPGA镜像文件到指定实例的指定FPGA卡上。
    /// * 只支持对单个实例发起在线烧录FPGA镜像的操作。
    /// * 支持对单个实例的多块FPGA卡同时烧录FPGA镜像，DBDFs参数为空时，默认对指定实例的所有FPGA卡进行烧录。
    @inlinable @discardableResult
    public func programFpgaImage(_ input: ProgramFpgaImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ProgramFpgaImageResponse> {
        self.client.execute(action: "ProgramFpgaImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 在线烧录FPGA镜像
    ///
    /// 本接口(ProgramFpgaImage)用于在线烧录由客户提供的FPGA镜像文件到指定实例的指定FPGA卡上。
    /// * 只支持对单个实例发起在线烧录FPGA镜像的操作。
    /// * 支持对单个实例的多块FPGA卡同时烧录FPGA镜像，DBDFs参数为空时，默认对指定实例的所有FPGA卡进行烧录。
    @inlinable @discardableResult
    public func programFpgaImage(_ input: ProgramFpgaImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ProgramFpgaImageResponse {
        try await self.client.execute(action: "ProgramFpgaImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 在线烧录FPGA镜像
    ///
    /// 本接口(ProgramFpgaImage)用于在线烧录由客户提供的FPGA镜像文件到指定实例的指定FPGA卡上。
    /// * 只支持对单个实例发起在线烧录FPGA镜像的操作。
    /// * 支持对单个实例的多块FPGA卡同时烧录FPGA镜像，DBDFs参数为空时，默认对指定实例的所有FPGA卡进行烧录。
    @inlinable @discardableResult
    public func programFpgaImage(instanceId: String, fpgaUrl: String, dbdFs: [String]? = nil, dryRun: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ProgramFpgaImageResponse> {
        self.programFpgaImage(.init(instanceId: instanceId, fpgaUrl: fpgaUrl, dbdFs: dbdFs, dryRun: dryRun), region: region, logger: logger, on: eventLoop)
    }

    /// 在线烧录FPGA镜像
    ///
    /// 本接口(ProgramFpgaImage)用于在线烧录由客户提供的FPGA镜像文件到指定实例的指定FPGA卡上。
    /// * 只支持对单个实例发起在线烧录FPGA镜像的操作。
    /// * 支持对单个实例的多块FPGA卡同时烧录FPGA镜像，DBDFs参数为空时，默认对指定实例的所有FPGA卡进行烧录。
    @inlinable @discardableResult
    public func programFpgaImage(instanceId: String, fpgaUrl: String, dbdFs: [String]? = nil, dryRun: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ProgramFpgaImageResponse {
        try await self.programFpgaImage(.init(instanceId: instanceId, fpgaUrl: fpgaUrl, dbdFs: dbdFs, dryRun: dryRun), region: region, logger: logger, on: eventLoop)
    }
}
