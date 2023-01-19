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

extension Tke {
    /// CreateEdgeCVMInstances请求参数结构体
    public struct CreateEdgeCVMInstancesRequest: TCRequestModel {
        /// 集群id
        public let clusterID: String

        /// CVM创建透传参数，json化字符串格式，如需要保证扩展集群节点请求幂等性需要在此参数添加ClientToken字段，详见[CVM创建实例](https://cloud.tencent.com/document/product/213/15730)接口。
        public let runInstancePara: String

        /// CVM所属Region
        public let cvmRegion: String

        /// CVM数量
        public let cvmCount: Int64

        /// 实例扩展信息
        public let external: String?

        /// 用户自定义脚本
        public let userScript: String?

        /// 是否开启弹性网卡功能
        public let enableEni: Bool?

        public init(clusterID: String, runInstancePara: String, cvmRegion: String, cvmCount: Int64, external: String? = nil, userScript: String? = nil, enableEni: Bool? = nil) {
            self.clusterID = clusterID
            self.runInstancePara = runInstancePara
            self.cvmRegion = cvmRegion
            self.cvmCount = cvmCount
            self.external = external
            self.userScript = userScript
            self.enableEni = enableEni
        }

        enum CodingKeys: String, CodingKey {
            case clusterID = "ClusterID"
            case runInstancePara = "RunInstancePara"
            case cvmRegion = "CvmRegion"
            case cvmCount = "CvmCount"
            case external = "External"
            case userScript = "UserScript"
            case enableEni = "EnableEni"
        }
    }

    /// CreateEdgeCVMInstances返回参数结构体
    public struct CreateEdgeCVMInstancesResponse: TCResponseModel {
        /// cvm id 列表
        public let cvmIdSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case cvmIdSet = "CvmIdSet"
            case requestId = "RequestId"
        }
    }

    /// 创建边缘容器CVM机器
    @inlinable
    public func createEdgeCVMInstances(_ input: CreateEdgeCVMInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEdgeCVMInstancesResponse> {
        self.client.execute(action: "CreateEdgeCVMInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建边缘容器CVM机器
    @inlinable
    public func createEdgeCVMInstances(_ input: CreateEdgeCVMInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEdgeCVMInstancesResponse {
        try await self.client.execute(action: "CreateEdgeCVMInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建边缘容器CVM机器
    @inlinable
    public func createEdgeCVMInstances(clusterID: String, runInstancePara: String, cvmRegion: String, cvmCount: Int64, external: String? = nil, userScript: String? = nil, enableEni: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEdgeCVMInstancesResponse> {
        self.createEdgeCVMInstances(CreateEdgeCVMInstancesRequest(clusterID: clusterID, runInstancePara: runInstancePara, cvmRegion: cvmRegion, cvmCount: cvmCount, external: external, userScript: userScript, enableEni: enableEni), region: region, logger: logger, on: eventLoop)
    }

    /// 创建边缘容器CVM机器
    @inlinable
    public func createEdgeCVMInstances(clusterID: String, runInstancePara: String, cvmRegion: String, cvmCount: Int64, external: String? = nil, userScript: String? = nil, enableEni: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEdgeCVMInstancesResponse {
        try await self.createEdgeCVMInstances(CreateEdgeCVMInstancesRequest(clusterID: clusterID, runInstancePara: runInstancePara, cvmRegion: cvmRegion, cvmCount: cvmCount, external: external, userScript: userScript, enableEni: enableEni), region: region, logger: logger, on: eventLoop)
    }
}
