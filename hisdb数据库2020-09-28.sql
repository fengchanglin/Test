SELECT
	DATE_FORMAT(s.`basicflow_sterile_time`,'%Y-%m-%d'),
	COUNT(p.`basicflow_package_name`) AS packagecount
FROM
	`t_basicflow_sterile` s,
	`t_basicflow_package` p
WHERE
	p.basicflow_package_sterilizationid = s.basicflow_sterile_id
	AND p.basicflow_package_unusual = 0
	AND s.basicflow_sterile_time BETWEEN '2020-07-01' AND '2020-07-07'
GROUP BY
	DATE_FORMAT(s.`basicflow_sterile_time`,'%Y-%m-%d')
ORDER BY
	DATE_FORMAT(s.`basicflow_sterile_time`,'%Y-%m-%d')