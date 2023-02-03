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

extension Tcr {
    /// CreateInstance请求参数结构体
    public struct CreateInstanceRequest: TCRequestModel {
        /// 企业版实例名称
        public let registryName: String

        /// 企业版实例类型（basic 基础版；standard 标准版；premium 高级版）
        public let registryType: String

        /// 云标签描述
        public let tagSpecification: TagSpecification?

        /// 实例计费类型，0表示按量计费，1表示预付费，默认为按量计费
        public let registryChargeType: Int64?

        /// 预付费自动续费标识和购买时长
        public let registryChargePrepaid: RegistryChargePrepaid?

        /// 是否同步TCR云标签至生成的COS Bucket
        public let syncTag: Bool?

        public init(registryName: String, registryType: String, tagSpecification: TagSpecification? = nil, registryChargeType: Int64? = nil, registryChargePrepaid: RegistryChargePrepaid? = nil, syncTag: Bool? = nil) {
            self.registryName = registryName
            self.registryType = registryType
            self.tagSpecification = tagSpecification
            self.registryChargeType = registryChargeType
            self.registryChargePrepaid = registryChargePrepaid
            self.syncTag = syncTag
        }

        enum CodingKeys: String, CodingKey {
            case registryName = "RegistryName"
            case registryType = "RegistryType"
            case tagSpecification = "TagSpecification"
            case registryChargeType = "RegistryChargeType"
            case registryChargePrepaid = "RegistryChargePrepaid"
            case syncTag = "SyncTag"
        }
    }

    /// CreateInstance返回参数结构体
    public struct CreateInstanceResponse: TCResponseModel {
        /// 企业版实例Id
        public let registryId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case requestId = "RequestId"
        }
    }

    /// 创建实例
    @inlinable
    public func createInstance(_ input: CreateInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstanceResponse> {
        self.client.execute(action: "CreateInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建实例
    @inlinable
    public func createInstance(_ input: CreateInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstanceResponse {
        try await self.client.execute(action: "CreateInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建实例
    @inlinable
    public func createInstance(registryName: String, registryType: String, tagSpecification: TagSpecification? = nil, registryChargeType: Int64? = nil, registryChargePrepaid: RegistryChargePrepaid? = nil, syncTag: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstanceResponse> {
        let input = CreateInstanceRequest(registryName: registryName, registryType: registryType, tagSpecification: tagSpecification, registryChargeType: registryChargeType, registryChargePrepaid: registryChargePrepaid, syncTag: syncTag)
        return self.client.execute(action: "CreateInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建实例
    @inlinable
    public func createInstance(registryName: String, registryType: String, tagSpecification: TagSpecification? = nil, registryChargeType: Int64? = nil, registryChargePrepaid: RegistryChargePrepaid? = nil, syncTag: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstanceResponse {
        let input = CreateInstanceRequest(registryName: registryName, registryType: registryType, tagSpecification: tagSpecification, registryChargeType: registryChargeType, registryChargePrepaid: registryChargePrepaid, syncTag: syncTag)
        return try await self.client.execute(action: "CreateInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
