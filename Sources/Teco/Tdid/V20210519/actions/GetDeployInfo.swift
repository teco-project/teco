//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tdid {
    /// GetDeployInfo请求参数结构体
    public struct GetDeployInfoRequest: TCRequestModel {
        /// 合约CNS地址
        public let hash: String
        
        public init (hash: String) {
            self.hash = hash
        }
        
        enum CodingKeys: String, CodingKey {
            case hash = "Hash"
        }
    }
    
    /// GetDeployInfo返回参数结构体
    public struct GetDeployInfoResponse: TCResponseModel {
        /// 合约CNS地址
        public let hash: String
        
        /// 合约主群组ID
        public let groupId: String
        
        /// 部署机构DID
        public let deployDid: String
        
        /// TDID SDK版本
        public let sdkVersion: String
        
        /// TDID 合约版本
        public let contractVersion: String
        
        /// 区块链节点版本
        public let blockVersion: String
        
        /// 区块链节点IP
        public let blockIp: String
        
        /// DID合约地址
        public let didAddress: String
        
        /// CPT合约地址
        public let cptAddress: String
        
        /// Authority Issuer地址
        public let authorityAddress: String
        
        /// Evidence合约地址
        public let evidenceAddress: String
        
        /// Specific Issuer合约地址
        public let specificAddress: String
        
        /// 链ID
        public let chainId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case hash = "Hash"
            case groupId = "GroupId"
            case deployDid = "DeployDid"
            case sdkVersion = "SdkVersion"
            case contractVersion = "ContractVersion"
            case blockVersion = "BlockVersion"
            case blockIp = "BlockIp"
            case didAddress = "DidAddress"
            case cptAddress = "CptAddress"
            case authorityAddress = "AuthorityAddress"
            case evidenceAddress = "EvidenceAddress"
            case specificAddress = "SpecificAddress"
            case chainId = "ChainId"
            case requestId = "RequestId"
        }
    }
    
    /// 合约部署详情
    @inlinable
    public func getDeployInfo(_ input: GetDeployInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetDeployInfoResponse > {
        self.client.execute(action: "GetDeployInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 合约部署详情
    @inlinable
    public func getDeployInfo(_ input: GetDeployInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetDeployInfoResponse {
        try await self.client.execute(action: "GetDeployInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
