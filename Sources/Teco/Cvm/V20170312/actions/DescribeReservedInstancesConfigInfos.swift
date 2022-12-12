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

extension Cvm {
    /// DescribeReservedInstancesConfigInfos请求参数结构体
    public struct DescribeReservedInstancesConfigInfosRequest: TCRequestModel {
        /// zone
        /// 按照预留实例计费可购买的可用区进行过滤。形如：ap-guangzhou-1。
        /// 类型：String
        /// 必选：否
        /// 可选项：各地域可用区列表
        /// product-description
        /// 按照预留实例计费的平台描述（即操作系统）进行过滤。形如：linux。
        /// 类型：String
        /// 必选：否
        /// 可选项：linux
        /// duration
        /// 按照预留实例计费有效期，即预留实例计费购买时长进行过滤。形如：31536000。
        /// 类型：Integer
        /// 计量单位：秒
        /// 必选：否
        /// 可选项：31536000 (1年)
        public let filters: [Filter]?
        
        public init (filters: [Filter]? = nil) {
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
        }
    }
    
    /// DescribeReservedInstancesConfigInfos返回参数结构体
    public struct DescribeReservedInstancesConfigInfosResponse: TCResponseModel {
        /// 预留实例静态配置信息列表。
        public let reservedInstanceConfigInfos: [ReservedInstanceConfigInfoItem]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case reservedInstanceConfigInfos = "ReservedInstanceConfigInfos"
            case requestId = "RequestId"
        }
    }
    
    /// 查询预留实例机型配置
    ///
    /// 本接口(DescribeReservedInstancesConfigInfos)供用户列出可购买预留实例机型配置。预留实例当前只针对国际站白名单用户开放。
    @inlinable
    public func describeReservedInstancesConfigInfos(_ input: DescribeReservedInstancesConfigInfosRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeReservedInstancesConfigInfosResponse > {
        self.client.execute(action: "DescribeReservedInstancesConfigInfos", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询预留实例机型配置
    ///
    /// 本接口(DescribeReservedInstancesConfigInfos)供用户列出可购买预留实例机型配置。预留实例当前只针对国际站白名单用户开放。
    @inlinable
    public func describeReservedInstancesConfigInfos(_ input: DescribeReservedInstancesConfigInfosRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReservedInstancesConfigInfosResponse {
        try await self.client.execute(action: "DescribeReservedInstancesConfigInfos", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
