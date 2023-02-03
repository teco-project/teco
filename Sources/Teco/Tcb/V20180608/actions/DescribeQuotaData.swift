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

extension Tcb {
    /// DescribeQuotaData请求参数结构体
    public struct DescribeQuotaDataRequest: TCRequestModel {
        /// 环境ID
        public let envId: String

        /// <li> 指标名: </li>
        /// <li> StorageSizepkg: 当月存储空间容量, 单位MB </li>
        /// <li> StorageReadpkg: 当月存储读请求次数 </li>
        /// <li> StorageWritepkg: 当月存储写请求次数 </li>
        /// <li> StorageCdnOriginFluxpkg: 当月CDN回源流量, 单位字节 </li>
        /// <li> StorageCdnOriginFluxpkgDay: 当日CDN回源流量, 单位字节 </li>
        /// <li> StorageReadpkgDay: 当日存储读请求次数 </li>
        /// <li> StorageWritepkgDay: 当日写请求次数 </li>
        /// <li> CDNFluxpkg: 当月CDN流量, 单位为字节 </li>
        /// <li> CDNFluxpkgDay: 当日CDN流量, 单位为字节 </li>
        /// <li> FunctionInvocationpkg: 当月云函数调用次数 </li>
        /// <li> FunctionGBspkg: 当月云函数资源使用量, 单位Mb*Ms </li>
        /// <li> FunctionFluxpkg: 当月云函数流量, 单位千字节(KB) </li>
        /// <li> FunctionInvocationpkgDay: 当日云函数调用次数 </li>
        /// <li> FunctionGBspkgDay: 当日云函数资源使用量, 单位Mb*Ms </li>
        /// <li> FunctionFluxpkgDay: 当日云函数流量, 单位千字节(KB) </li>
        /// <li> DbSizepkg: 当月数据库容量大小, 单位MB </li>
        /// <li> DbReadpkg: 当日数据库读请求数 </li>
        /// <li> DbWritepkg: 当日数据库写请求数 </li>
        /// <li> StaticFsFluxPkgDay: 当日静态托管流量 </li>
        /// <li> StaticFsFluxPkg: 当月静态托管流量</li>
        /// <li> StaticFsSizePkg: 当月静态托管容量 </li>
        /// <li> TkeCpuUsedPkg: 当月容器托管CPU使用量，单位核*秒 </li>
        /// <li> TkeCpuUsedPkgDay: 当天容器托管CPU使用量，单位核*秒 </li>
        /// <li> TkeMemUsedPkg: 当月容器托管内存使用量，单位MB*秒 </li>
        /// <li> TkeMemUsedPkgDay: 当天容器托管内存使用量，单位MB*秒 </li>
        /// <li> CodingBuildTimePkgDay: 当天容器托管构建时间使用量，单位毫秒 </li>
        /// <li> TkeHttpServiceNatPkgDay: 当天容器托管流量使用量，单位B </li>
        public let metricName: String

        /// 资源ID, 目前仅对云函数、容器托管相关的指标有意义。云函数(FunctionInvocationpkg, FunctionGBspkg, FunctionFluxpkg)、容器托管（服务名称）。如果想查询某个云函数的指标则在ResourceId中传入函数名; 如果只想查询整个namespace的指标, 则留空或不传。
        public let resourceID: String?

        public init(envId: String, metricName: String, resourceID: String? = nil) {
            self.envId = envId
            self.metricName = metricName
            self.resourceID = resourceID
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case metricName = "MetricName"
            case resourceID = "ResourceID"
        }
    }

    /// DescribeQuotaData返回参数结构体
    public struct DescribeQuotaDataResponse: TCResponseModel {
        /// 指标名
        public let metricName: String

        /// 指标的值
        public let value: Int64

        /// 指标的附加值信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subValue: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case metricName = "MetricName"
            case value = "Value"
            case subValue = "SubValue"
            case requestId = "RequestId"
        }
    }

    /// 查询环境的配额使用量
    ///
    /// 查询指定指标的配额使用量
    @inlinable
    public func describeQuotaData(_ input: DescribeQuotaDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeQuotaDataResponse> {
        self.client.execute(action: "DescribeQuotaData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询环境的配额使用量
    ///
    /// 查询指定指标的配额使用量
    @inlinable
    public func describeQuotaData(_ input: DescribeQuotaDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQuotaDataResponse {
        try await self.client.execute(action: "DescribeQuotaData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询环境的配额使用量
    ///
    /// 查询指定指标的配额使用量
    @inlinable
    public func describeQuotaData(envId: String, metricName: String, resourceID: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeQuotaDataResponse> {
        let input = DescribeQuotaDataRequest(envId: envId, metricName: metricName, resourceID: resourceID)
        return self.client.execute(action: "DescribeQuotaData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询环境的配额使用量
    ///
    /// 查询指定指标的配额使用量
    @inlinable
    public func describeQuotaData(envId: String, metricName: String, resourceID: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQuotaDataResponse {
        let input = DescribeQuotaDataRequest(envId: envId, metricName: metricName, resourceID: resourceID)
        return try await self.client.execute(action: "DescribeQuotaData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
