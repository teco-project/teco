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

extension Tbaas {
    /// DeployDynamicBcosContract请求参数结构体
    public struct DeployDynamicBcosContractRequest: TCRequestModel {
        /// 网络ID，可在区块链网络详情或列表中获取
        public let clusterId: String

        /// 群组编号，可在群组列表中获取
        public let groupId: Int64

        /// 合约编译后的ABI，可在合约详情获取
        public let abiInfo: String

        /// 合约编译得到的字节码，hex编码，可在合约详情获取
        public let byteCodeBin: String

        /// 签名用户编号，可在私钥管理页面获取
        public let signUserId: String

        /// 构造函数入参，Json数组，多个参数以逗号分隔（参数为数组时同理），如：["str1",["arr1","arr2"]]
        public let constructorParams: String?

        public init(clusterId: String, groupId: Int64, abiInfo: String, byteCodeBin: String, signUserId: String, constructorParams: String? = nil) {
            self.clusterId = clusterId
            self.groupId = groupId
            self.abiInfo = abiInfo
            self.byteCodeBin = byteCodeBin
            self.signUserId = signUserId
            self.constructorParams = constructorParams
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case groupId = "GroupId"
            case abiInfo = "AbiInfo"
            case byteCodeBin = "ByteCodeBin"
            case signUserId = "SignUserId"
            case constructorParams = "ConstructorParams"
        }
    }

    /// DeployDynamicBcosContract返回参数结构体
    public struct DeployDynamicBcosContractResponse: TCResponseModel {
        /// 部署成功返回的合约地址
        public let contractAddress: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case contractAddress = "ContractAddress"
            case requestId = "RequestId"
        }
    }

    /// 动态部署并发布Bcos合约
    @inlinable
    public func deployDynamicBcosContract(_ input: DeployDynamicBcosContractRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeployDynamicBcosContractResponse> {
        self.client.execute(action: "DeployDynamicBcosContract", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 动态部署并发布Bcos合约
    @inlinable
    public func deployDynamicBcosContract(_ input: DeployDynamicBcosContractRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeployDynamicBcosContractResponse {
        try await self.client.execute(action: "DeployDynamicBcosContract", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 动态部署并发布Bcos合约
    @inlinable
    public func deployDynamicBcosContract(clusterId: String, groupId: Int64, abiInfo: String, byteCodeBin: String, signUserId: String, constructorParams: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeployDynamicBcosContractResponse> {
        self.deployDynamicBcosContract(DeployDynamicBcosContractRequest(clusterId: clusterId, groupId: groupId, abiInfo: abiInfo, byteCodeBin: byteCodeBin, signUserId: signUserId, constructorParams: constructorParams), region: region, logger: logger, on: eventLoop)
    }

    /// 动态部署并发布Bcos合约
    @inlinable
    public func deployDynamicBcosContract(clusterId: String, groupId: Int64, abiInfo: String, byteCodeBin: String, signUserId: String, constructorParams: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeployDynamicBcosContractResponse {
        try await self.deployDynamicBcosContract(DeployDynamicBcosContractRequest(clusterId: clusterId, groupId: groupId, abiInfo: abiInfo, byteCodeBin: byteCodeBin, signUserId: signUserId, constructorParams: constructorParams), region: region, logger: logger, on: eventLoop)
    }
}
