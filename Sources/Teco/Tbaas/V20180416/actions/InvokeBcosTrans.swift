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
    /// InvokeBcosTrans请求参数结构体
    public struct InvokeBcosTransRequest: TCRequestModel {
        /// 网络ID，可在区块链网络详情或列表中获取
        public let clusterId: String

        /// 群组编号，可在群组列表中获取
        public let groupId: Int64

        /// 合约地址，可在合约详情获取
        public let contractAddress: String

        /// 合约Abi的json数组格式的字符串，可在合约详情获取
        public let abiInfo: String

        /// 合约方法名
        public let funcName: String

        /// 签名用户编号，可在私钥管理页面获取
        public let signUserId: String

        /// 合约方法入参，json格式字符串
        public let funcParam: String?

        public init(clusterId: String, groupId: Int64, contractAddress: String, abiInfo: String, funcName: String, signUserId: String, funcParam: String? = nil) {
            self.clusterId = clusterId
            self.groupId = groupId
            self.contractAddress = contractAddress
            self.abiInfo = abiInfo
            self.funcName = funcName
            self.signUserId = signUserId
            self.funcParam = funcParam
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case groupId = "GroupId"
            case contractAddress = "ContractAddress"
            case abiInfo = "AbiInfo"
            case funcName = "FuncName"
            case signUserId = "SignUserId"
            case funcParam = "FuncParam"
        }
    }

    /// InvokeBcosTrans返回参数结构体
    public struct InvokeBcosTransResponse: TCResponseModel {
        /// 交易结果json字符串
        public let transactionRsp: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case transactionRsp = "TransactionRsp"
            case requestId = "RequestId"
        }
    }

    /// 执行Bcos交易
    ///
    /// 执行Bcos交易，支持动态部署的合约
    @inlinable
    public func invokeBcosTrans(_ input: InvokeBcosTransRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InvokeBcosTransResponse> {
        self.client.execute(action: "InvokeBcosTrans", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 执行Bcos交易
    ///
    /// 执行Bcos交易，支持动态部署的合约
    @inlinable
    public func invokeBcosTrans(_ input: InvokeBcosTransRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InvokeBcosTransResponse {
        try await self.client.execute(action: "InvokeBcosTrans", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 执行Bcos交易
    ///
    /// 执行Bcos交易，支持动态部署的合约
    @inlinable
    public func invokeBcosTrans(clusterId: String, groupId: Int64, contractAddress: String, abiInfo: String, funcName: String, signUserId: String, funcParam: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<InvokeBcosTransResponse> {
        self.invokeBcosTrans(InvokeBcosTransRequest(clusterId: clusterId, groupId: groupId, contractAddress: contractAddress, abiInfo: abiInfo, funcName: funcName, signUserId: signUserId, funcParam: funcParam), region: region, logger: logger, on: eventLoop)
    }

    /// 执行Bcos交易
    ///
    /// 执行Bcos交易，支持动态部署的合约
    @inlinable
    public func invokeBcosTrans(clusterId: String, groupId: Int64, contractAddress: String, abiInfo: String, funcName: String, signUserId: String, funcParam: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> InvokeBcosTransResponse {
        try await self.invokeBcosTrans(InvokeBcosTransRequest(clusterId: clusterId, groupId: groupId, contractAddress: contractAddress, abiInfo: abiInfo, funcName: funcName, signUserId: signUserId, funcParam: funcParam), region: region, logger: logger, on: eventLoop)
    }
}
